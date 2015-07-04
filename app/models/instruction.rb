class Instruction < ActiveRecord::Base
  belongs_to :experiment
  validates :information, :order, presence: true
  validates :information, uniqueness: true
end