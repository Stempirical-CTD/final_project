class AddConcepToExperiments < ActiveRecord::Migration
  def change
    add_column :experiments, :concept, :string
  end
end
