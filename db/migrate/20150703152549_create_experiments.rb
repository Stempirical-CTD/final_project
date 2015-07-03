class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.integer :user_id
      t.text :description
      t.text :lesson
      t.text :youtube_link
      t.float :complete_time

      t.timestamps null: false
    end
  end
end
