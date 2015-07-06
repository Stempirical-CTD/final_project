class Experiment < ActiveRecord::Base
  ratyrate_rateable "name"
  belongs_to :user

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
    data = select('experiments.*, coalesce(value, 0) as votes').
    joins('left join experiment_votes on experiment_id=experiments.id').
    # group('experiment_id').
    order('votes desc')
    # data.each do |d|
    # end
    return data
  end

  def votes
    read_attribute(:votes) || experiment_votes.sum(:value)
  end

  def self.order_by_mess
    new_exp_array = self.all.map do |e|
      [e, e.average("name").nil? ? 0 : e.average("name").avg]
    end
    new_exp_array.sort_by(&:last).reverse #same as new_exp_array.sort {|a,b| b[-1] <=> a[1]}
  end

end
