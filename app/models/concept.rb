class Concept < ActiveRecord::Base
  has_many :child_relationships,
           class_name: 'ConceptRelationship',
           foreign_key: :parent_id
  has_many :parent_relationships,
           class_name: 'ConceptRelationship',
           foreign_key: :child_id

  has_many :parents, through: :parent_relationships
  has_many :children, through: :child_relationships
  has_many :concepts_experiments
  has_many :experiments, through: :concepts_experiments

  def display_concepts(used_concepts = [])
    used_concepts << self

    hash = { name: name, children: [], experiments: experiments.pluck(:name) }

    children.each do |child|
      next if used_concepts.include?(child)
      hash[:children] << child.display_concepts(used_concepts)
    end

    hash
  end
end
