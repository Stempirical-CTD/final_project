class Concept < ActiveRecord::Base
  has_and_belongs_to_many :experiments

  has_many :child_relationships, class_name: "ConceptRelationship", foreign_key: :parent_id
  has_many :parent_relationships, class_name: "ConceptRelationship", foreign_key: :child_id

  has_many :parents, through: :parent_relationships
  has_many :children, through: :child_relationships
end

Concept.create!(name: "Solar")
Concept.create!(name: "Water")
Concept.create!(name: "Evaporation")
ConceptRelationship.create!(parent_id: 1, child_id: 2)
ConceptRelationship.create!(parent_id: 2, child_id: 3)
Concept.first.children
=> "Water" #we expected [["Water"], ["Evaporation"]]
similarly
Concept.fist.parents
=> "Water" #we expected [["Water"], ["Solar"]]
