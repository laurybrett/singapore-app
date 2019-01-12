class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :email
      t.string :location
      t.string :description
      t.integer :code
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
