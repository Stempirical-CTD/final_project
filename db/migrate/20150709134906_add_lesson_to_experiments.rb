class AddLessonToExperiments < ActiveRecord::Migration
  def change
    add_column :experiments, :lesson, :text
  end
end
