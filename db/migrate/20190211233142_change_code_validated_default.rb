class ChangeCodeValidatedDefault < ActiveRecord::Migration[5.2]
  def up
    change_column :orders, :code_validated, :boolean, default: false
  end

  def down
    change_column :orders, :code_validated, :boolean, default: nil
  end
end
