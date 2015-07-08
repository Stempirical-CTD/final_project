class Experiment < ActiveRecord::Base
  ratyrate_rateable "name"
  belongs_to :user

  has_attached_file :uploaded_file,
                    :storage => :s3,
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

  validates_attachment_content_type :uploaded_file, :content_type => /\Aimage\/.*\Z/
  has_many :comments, as: :commentable

  has_many :experiment_votes
  accepts_nested_attributes_for :experiment_votes

  has_many :materials, dependent: :destroy
  accepts_nested_attributes_for :materials

  has_many :instructions, dependent: :destroy
  accepts_nested_attributes_for :instructions

  validates :description, :lesson, :complete_time, :name, presence: true
  validates_format_of :youtube_link,
      :with => /\A(?:https?:\/\/)?(?:www\.)?youtu(?:\.be|be\.com)\/(?:watch\?v=)?([\w-]{10,})\z/,
      :on => :create

  def self.by_votes
    all.sort_by {|e| e.experiment_votes.count}.reverse
  end

  def votes
    read_attribute(:votes) || experiment_votes.sum(:value)
  end

  def self.order_by_mess
    (all.sort_by {|e| e.average("name").nil? ? 0 : e.average("name").avg}).reverse
  end


  # def age 
  #   #list by age  in the view page by the key and not the value
  # end
  #
  # # def self.order_by_age
  # #   ages.values.sort { |k,v| v[] }
  # # end


  def s3_credentials
    {:bucket => "stempirical",
        :access_key_id => ENV["AMS3_ID"],
        :secret_access_key => ENV["AMS3_KEY"]}
  end

>>>>>>> be80b151c125c079bcf0fba14012a4576dca1561
end
