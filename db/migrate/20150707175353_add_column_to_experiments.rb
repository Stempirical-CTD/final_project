class AddColumnToExperiments < ActiveRecord::Migration
  def change
    add_attachment :experiments, :uploaded_file
  end
end
