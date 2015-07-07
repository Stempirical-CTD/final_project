class AddAgeToExperiments < ActiveRecord::Migration
  def change
    add_column :experiments, :age, :integer
  end
end
