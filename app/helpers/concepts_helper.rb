module ConceptsHelper

  class ConceptDisplayer
    def initialize
      @already_displayed_concepts = []
      @content = []
    end

    def display_concepts(concept, level=1)
      unless @already_displayed_concepts.include?(concept.name)
        @already_displayed_concepts << concept.name
        @content <<  {
          type: :heading,
          level: level,
          name: concept.name,

        }
        # @html << "<h#{level}>#{ concept.name }</h#{level}>"

        experiments = concept.experiments.each do |experiment|
          @content << {
            type: :list_item,
            text: experiment.name
          }
        end
      end

      concept.children.each do |child|
        self.display_concepts(child, level + 1)
      end

      return @content
    end

  end

end
