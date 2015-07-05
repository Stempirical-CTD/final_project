class Experiment < ActiveRecord::Base
  ratyrate_rateable "name"
  belongs_to :user

  has_many :experiment_votes
  accepts_nested_attributes_for :experiment_votes

  has_many :materials, dependent: :destroy
  accepts_nested_attributes_for :materials

  has_many :instructions, dependent: :destroy
  accepts_nested_attributes_for :instructions

  validates :description, :lesson, :complete_time, presence: true

  def self.by_votes
    select('experiments.*, coalesce(SUM(value), 0) as votes').
    joins('left join experiment_votes on experiment_id=experiments.id').
    group('experiment_id').
    order('votes desc')
  end

  def votes
    read_attribute(:votes) || experiment_votes.sum(:value)
  end

end
