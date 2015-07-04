class AddNameToExperiment < ActiveRecord::Migration
  def change
    add_column :experiments, :name, :string
  end
end
