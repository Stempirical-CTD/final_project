class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :experiments
  has_many :experiment_votes
  validates :username, presence: true

  def total_votes
    ExperimentVote.joins(:experiment).where(experiments: {user_id: self.id}).sum('value')
  end

  def can_vote_for?(experiment)
    experiment_votes.build(value: 1, experiment: experiment).valid?
  end

end
