class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.integer :experiment_id
      t.text :step
      t.integer :order

      t.timestamps null: false
    end
  end
end
