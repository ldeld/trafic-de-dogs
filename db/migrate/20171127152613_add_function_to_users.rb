class AddFunctionToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :sitter, :boolean
  end
end
