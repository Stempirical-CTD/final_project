class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :materials, :item, :
  end
end
