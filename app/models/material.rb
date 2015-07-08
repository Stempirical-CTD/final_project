class Material < ActiveRecord::Base
  belongs_to :experiment
  validates :item, presence: true
  validates :item, uniqueness: { scope: :experiment_id }

end
