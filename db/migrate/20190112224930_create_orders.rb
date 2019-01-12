class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.timestamp :date_order
      t.boolean :code_validated
      t.timestamp :code_validated_time
      t.string :payment_mode
      t.references :cart, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
