class Material < ActiveRecord::Base
  validates :item, presence: true

  belongs_to :experiment
end
