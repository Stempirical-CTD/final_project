class Experiment < ActiveRecord::Base
  ratyrate_rateable "name"
  belongs_to :user

  has_and_belongs_to_many :concepts

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

  def self.by_votes
    all.sort_by {|e| e.experiment_votes.count}.reverse
  end

  def votes
    read_attribute(:votes) || experiment_votes.sum(:value)
  end

  def self.order_number_by_mess
    (all.sort_by {|e| e.average("name").nil? ? 0 : e.average("name").avg}).reverse
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

    # array = []
    # counter = 0
    # loop do
    #   if counter > 1 && array.count > 0
    #     array.each do |c|
    #       array << c.children
    #     end
    #     array.uniq
    #   else
    #     concepts.each do |c|
    #       array << c.parents
    #     end
    #     counter += 1
    #     array.uniq
    #   end
    # end

  def number_of_concepts
    Concept.count
  end

  def related_concept_count
    concept_parents[0].count + concept_children[0].count
  end
end
