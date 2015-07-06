class Material < ActiveRecord::Base
  belongs_to :experiment
  validates :piece, presence: true
  validates :piece, uniqueness: { scope: :experiment_id }

  #item instead of piece
end
