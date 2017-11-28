class RemoveSitterFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :sitter
  end
end
