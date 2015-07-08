class AddConceptJoin < ActiveRecord::Migration
  def change
    create_table :concepts_experiments, :id => false do |t|
      t.integer :concept_id
      t.integer :experiment_id
    end
  end
end
