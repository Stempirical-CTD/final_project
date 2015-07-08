class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.integer :experiment_id
      t.text :item

      t.timestamps null: false
    end
  end
end
