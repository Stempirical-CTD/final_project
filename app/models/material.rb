class Material < ActiveRecord::Base
  belongs_to :experiment
  validates :piece, presence: true
  validates :piece, uniqueness: :true
end
