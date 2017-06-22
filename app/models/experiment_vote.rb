class ExperimentVote < ActiveRecord::Base
  belongs_to :user
  belongs_to :experiment

  validates_uniqueness_of :experiment_id, scope: :user_id
  validates_inclusion_of :value, in: [1, -1]
  validate :ensure_not_author

  def ensure_not_author
    return if experiment.user_id != user_id
    errors.add :user_id, 'is the author of the experiment'
  end
end
