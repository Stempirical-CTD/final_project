class Concept < ActiveRecord::Base
  has_and_belongs_to_many :experiments

  has_many :child_relationships, class_name: "ConceptRelationship", foreign_key: :parent_id
  has_many :parent_relationships, class_name: "ConceptRelationship", foreign_key: :child_id

  has_many :parents, through: :parent_relationships
  has_many :children, through: :child_relationships
end
