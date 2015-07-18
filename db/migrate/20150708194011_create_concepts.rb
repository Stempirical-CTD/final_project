class CreateConcepts < ActiveRecord::Migration
  def change
    create_table :concepts do |t|
      t.string :name
      t.text :description_link
      t.text :video_link
      t.text :summary

      t.timestamps null: false
    end
  end
end
