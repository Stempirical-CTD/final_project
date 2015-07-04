class CreateExperimentVotes < ActiveRecord::Migration
  def change
    create_table :experiment_votes do |t|
      t.integer :user_id
      t.integer :experiment_id
      t.integer :value

      t.timestamps null: false
    end
    add_index :experiment_votes, :user_id
    add_index :experiment_votes, :experiment_id
  end
end
