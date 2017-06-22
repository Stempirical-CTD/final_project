class Experiment < ActiveRecord::Base
  ratyrate_rateable 'name'
  has_attached_file :uploaded_file

  validates_attachment_content_type(
    :uploaded_file,
    content_type: ['image/jpeg', 'image/png', 'image/pdf']
  )

  belongs_to :user

  has_many :comments, as: :commentable
  has_many :experiment_votes
  has_many :materials, dependent: :destroy
  has_many :instructions, dependent: :destroy
  has_many :concepts_experiments
  has_many :concepts, through: :concepts_experiments

  validates :description, :complete_time, :name, :age, presence: true

  validates :youtube_link, format: {
    allow_blank: true,
    with: /\A(?:https?:\/\/)?(?:www\.)?youtu(?:\.be|be\.com)\/(?:watch\?v=)?([\w-]{10,})\z/
  }, on: :create

  accepts_nested_attributes_for :experiment_votes
  accepts_nested_attributes_for :materials,
                                reject_if: :all_blank,
                                allow_destroy: true
  accepts_nested_attributes_for :instructions,
                                reject_if: :all_blank,
                                allow_destroy: true

  def self.text_search(query)
    query = query.downcase
    q = "%#{query}%"

    joins(:materials).where(
      'LOWER(name) LIKE ? OR LOWER(description) LIKE ? OR LOWER(item) LIKE ?',
      q,
      q,
      q
    ).uniq
  end

  def self.by_votes
    all.sort_by { |e| e.experiment_votes.count }.reverse
  end

  def self.order_by_mess
    all.sort_by do |e|
      e.average('name').nil? ? 0 : e.average('name').avg
    end.reverse
  end

  def self.order_by_mess_complete_time
    all.sort_by do |e|
      [e.average('name').nil? ? 0 : e.average('name').avg, e.complete_time]
    end.reverse
  end

  def self.first_experiment(concept, experiment) # show recommended
    concept_experiment = []
    if experiment.concepts.count == 1 && concept.experiments.count == 1
      top_experiment = if Experiment.by_votes[0] != experiment
                         Experiment.by_votes[0]
                       else
                         Experiment.by_votes[1]
                       end
      concept_experiment << top_experiment.concepts.sample << top_experiment
    elsif concept.experiments.where.not(name: experiment.name).blank?
      # if current concept doesn't have any more experiments, do this
      concept = experiment.concepts.where.not(name: concept.name).sample
      # look for other concepts for the current experiment
      experiment = concept.experiments.where.not(name: experiment.name).sample
      concept_experiment << concept << experiment
    else
      # Another Experiment about concept.name
      experiment = concept.experiments.where.not(name: experiment.name).sample
      concept_experiment << concept << experiment
    end
  end

  def self.second_experiment(concept, _experiment) # show extended learning
    concept_experiment = []
    if concept.children.count > 0
      random_child = concept.children.sample
      random_child_experiment = random_child.experiments.sample
      concept_experiment << random_child << random_child_experiment
    else # work on your fundamenetals
      random_parent = concept.parents.sample
      random_parent_experiment = random_parent.experiments.sample
      concept_experiment << random_parent << random_parent_experiment
    end
  end

  def votes
    read_attribute(:votes) || experiment_votes.sum(:value)
  end

  def return_age
    if age == 1
      '3 & Under'
    elsif age == 2
      '4-6'
    elsif age == 3
      '7-9'
    elsif age == 4
      '10 & up'
    end
  end

  def concept_parents
    array = []
    concepts.each { |c| array += c.parents }
    array.uniq
  end

  def concept_children
    array = []
    concepts.each { |c| array += c.children }
    array.uniq
  end

  def find_concept
    concepts.sample
  end
end
