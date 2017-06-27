class ConceptRelationship < ActiveRecord::Base
  belongs_to :parent, class_name: 'Concept'
  belongs_to :child, class_name: 'Concept'
end
