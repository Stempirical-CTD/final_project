class ConceptsExperiment < ActiveRecord::Base
  validates :concept, presence: true
  validates :experiment, presence: true

  belongs_to :concept
  belongs_to :experiment
end
