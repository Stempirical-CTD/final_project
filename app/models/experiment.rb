class Experiment < ActiveRecord::Base
  ratyrate_rateable "name"
  belongs_to :user

  has_and_belongs_to_many :concepts

  # has_many :concepts_experiments
  # has_many :concepts, through: :concepts_experiments

  has_attached_file :uploaded_file,
                    :storage => :s3,
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

  validates_attachment_content_type :uploaded_file, :content_type => ['image/jpeg', 'image/png', 'image/pdf']
  has_many :comments, as: :commentable

  has_many :experiment_votes
  accepts_nested_attributes_for :experiment_votes

  has_many :materials, dependent: :destroy
  accepts_nested_attributes_for :materials

  has_many :instructions, dependent: :destroy
  accepts_nested_attributes_for :instructions

  validates :description, :complete_time, :name, presence: true
  validates_format_of :youtube_link,
      :with => /\A(?:https?:\/\/)?(?:www\.)?youtu(?:\.be|be\.com)\/(?:watch\?v=)?([\w-]{10,})\z/,
      :on => :create
  scope :time, -> { order(:complete_time) }

  def self.text_search(query, material)
    if material != ""
      where("name LIKE ?", "%#{query}%")
      where("description LIKE ?", "%#{query}%")
      material = Material.where("item LIKE ?", "%#{material}")
      material.map {|m| m.experiment}
    else
      where("name LIKE ?", "%#{query}%")
      where("description LIKE ?", "%#{query}%")
    end

  end

  def self.by_votes
    all.sort_by {|e| e.experiment_votes.count}.reverse
  end

  def votes
    read_attribute(:votes) || experiment_votes.sum(:value)
  end

  def return_age
    # ages = {1 => "3 & Under", 2 => "4-6", 3 => "7-9", 4 => "10 & up"}
    if self.age == 1
      "3 & Under"
    elsif self.age == 2
      "4-6"
    elsif self.age == 3
      "7-9"
    elsif self.age == 4
      "10 & up"
    end
  end

  def self.order_by_mess
    (all.sort_by {|e| e.average("name").nil? ? 0 : e.average("name").avg}).reverse
  end

  def self.order_by_mess_complete_time
    (all.sort_by {|e| [e.average("name").nil? ? 0 : e.average("name").avg, e.complete_time]}).reverse
  end

  def s3_credentials
    {:bucket => "stempirical",
        :access_key_id => ENV["AMS3_ID"],
        :secret_access_key => ENV["AMS3_KEY"]}
  end

  def concept_parents
    array = []
    concepts.each do |c|
      array += c.parents
    end
    array.uniq
  end

  def concept_children
    array = []
    concepts.each do |c|
      array += c.children
    end
    array.uniq
  end
  #
  # def number_of_concepts
  #   Concept.count
  # end
  #
  # def related_concept_count
  #   concept_parents[0].count + concept_children[0].count
  # end
end
