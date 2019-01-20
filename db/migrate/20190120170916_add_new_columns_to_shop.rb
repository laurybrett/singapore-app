class AddNewColumnsToShop < ActiveRecord::Migration[5.2]
  def change
    add_column :shops, :ex_price, :float
    add_column :shops, :nb_box, :integer
    add_column :shops, :pickup_start, :datetime
    add_column :shops, :pickup_end, :datetime
  end
end
