class RemoveColumn < ActiveRecord::Migration
  def change
    remove_column :experiments, :lesson
  end
end
