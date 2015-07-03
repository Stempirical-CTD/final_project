class Experiment < ActiveRecord::Base
  belongs_to :user
  has_many :materials
  accepts_nested_attributes_for :materials
  validates :description, :lesson, :complete_time, presence: true
end
