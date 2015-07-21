class Experiment < ActiveRecord::Base
  ratyrate_rateable "name"
  belongs_to :user

  has_and_belongs_to_many :concepts

  has_attached_file :uploaded_file

  validates_attachment_content_type :uploaded_file, :content_type => ['image/jpeg', 'image/png', 'image/pdf']
  # validates :uploaded_file, presence: true

  has_many :comments, as: :commentable

  has_many :experiment_votes
  accepts_nested_attributes_for :experiment_votes

  has_many :materials, dependent: :destroy
  accepts_nested_attributes_for :materials,
      reject_if: :all_blank,
      allow_destroy: true

  has_many :instructions, dependent: :destroy
  accepts_nested_attributes_for :instructions,
      reject_if: :all_blank,
      allow_destroy: true

  validates :description, :complete_time, :name, presence: true
  validates_format_of :youtube_link,
      :allow_blank => true,
      :with => /\A(?:https?:\/\/)?(?:www\.)?youtu(?:\.be|be\.com)\/(?:watch\?v=)?([\w-]{10,})\z/,
      :on => :create

  def self.text_search(query)
    q = "%#{query}%"
    joins(:materials)
        .where("name LIKE ? OR description LIKE ? OR item LIKE ?", q, q, q).uniq
  end

  def self.by_votes
    all.sort_by {|e| e.experiment_votes.count}.reverse
  end

  def votes
    read_attribute(:votes) || experiment_votes.sum(:value)
  end

  def return_age
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

 #  def s3_credentials {
 #    :storage => :s3,
 #    :url =>':s3_domain_url',
 #    :path => '/:class/:attachment/:id_partition/:style/:filename',
 #    :s3_credentials => {
 #      :bucket => 'stempirical',
 #      :access_key_id => ENV['AMS3_ID'],
 #      :secret_access_key => ENV['AMS3_ID']
 #    }
 # end

  def self.order_by_mess
    (all.sort_by {|e| e.average("name").nil? ? 0 : e.average("name").avg}).reverse
  end

  def self.order_by_mess_complete_time
    (all.sort_by {|e| [e.average("name").nil? ? 0 : e.average("name").avg, e.complete_time]}).reverse
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

  def find_concept
    self.concepts.sample
  end

end
