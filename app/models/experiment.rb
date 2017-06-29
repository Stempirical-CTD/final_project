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

  # rubocop:disable Metrics/LineLength
  validates :youtube_link, format: {
    allow_blank: true,
    with: %r{\A(?:https?://)?(?:www\.)?youtu(?:\.be|be\.com)/(?:watch\?v=)?([\w-]{10,})\z}
  }, on: :create
  # rubocop:enable Metrics/LineLength

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

  # rubocop:disable Metrics/AbcSize
  def self.first_experiment(concept, experiment) # show recommended
    if experiment.concepts.one? && concept.experiments.one?
      return [experiment.concepts.first, experiment_by_votes(experiment)]
    end

    # if current concept doesn't have any more experiments, do this
    unless concept.experiments.pluck(:name).include?(name: experiment.name)
      concept = random_item_without_name(experiment.concepts, concept)
    end

    [concept, random_item_without_name(concept.experiments, experiment)]
  end
  # rubocop:enable Metrics/AbcSize

  def self.second_experiment(concept) # show extended learning
    concept_experiment = []

    random_concept = concept.children.sample if concept.children.any?
    random_concept ||= concept.parents.sample

    random_experiment = random_concept.experiments.sample
    concept_experiment << random_concept << random_experiment
  end

  def self.experiment_by_votes(experiment)
    if Experiment.by_votes[0] != experiment
      Experiment.by_votes[0]
    else
      Experiment.by_votes[1]
    end
  end

  def votes
    read_attribute(:votes) || experiment_votes.sum(:value)
  end

  def return_age
    { 1 => '3 & Under', 2 => '4-6', 3 => '7-9', 4 => '10 & up' }[age]
  end

  def concept_parents
    concepts.flat_map(&:parents).uniq
  end

  def concept_children
    concepts.flat_map(&:children).uniq
  end

  def find_concept
    concepts.sample
  end

  private_class_method def self.random_item_without_name(collection, object)
    collection.where.not(name: object.name).sample
  end
end
