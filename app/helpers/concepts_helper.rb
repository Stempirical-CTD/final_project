module ConceptsHelper
  def first_three_experiments(concept_name)
    Experiment
      .joins(:concepts)
      .merge(Concept.where(name: concept_name.to_s))
      .sort_by { |e| e.experiment_votes.count }
      .reverse
      .first(3)
  end

  class ConceptDisplayer
    def initialize
      @already_displayed_concepts = []
      @content = []
    end

    def display_concepts(concept, level = 1)
      unless @already_displayed_concepts.include?(concept.name)
        @already_displayed_concepts << concept.name
        @content << { type: :heading, level: level, name: concept.name }

        concept.experiments.each do |experiment|
          @content << { type: :list_item, text: experiment.name }
        end
      end

      concept.children.each { |child| display_concepts(child, level + 1) }

      @content
    end
  end
end
