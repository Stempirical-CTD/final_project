class Material < ActiveRecord::Base
  belongs_to :experiment
  validates :item, presence: true
end
