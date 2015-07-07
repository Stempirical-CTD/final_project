class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :materials, :piece, :item
  end
end
