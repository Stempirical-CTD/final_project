class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.integer :experiment_id
      t.text :information
      t.integer :order_number

      t.timestamps null: false
    end
  end
end
