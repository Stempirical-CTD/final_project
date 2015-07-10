class RemoveConceptFromExperiment < ActiveRecord::Migration
  def change
    remove_column :experiments, :concept, :string
  end
end
