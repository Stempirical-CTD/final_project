class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.integer :user_id
      t.text :description
      t.text :youtube_link
      t.integer :complete_time
      t.string :name
      t.integer :age

      t.timestamps null: false
    end
  end
end
