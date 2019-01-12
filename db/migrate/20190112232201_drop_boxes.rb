class DropBoxes < ActiveRecord::Migration[5.2]
  def change
    drop_table :boxes
  end
end
