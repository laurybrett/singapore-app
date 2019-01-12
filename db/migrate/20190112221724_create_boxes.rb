class CreateBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :boxes do |t|
      t.float :price
      t.float :previous_price
      t.integer :availability
      t.timestamp :pick_up_date_start
      t.timestamp :pick_up_date_end
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
