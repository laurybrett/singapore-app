class AddNewColumnToShop < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :price, :float
  end
end
