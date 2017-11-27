class ChangeDefaultSitterColumn < ActiveRecord::Migration[5.0]
  def change
    change_column_default :users, :sitter, true
  end
end
