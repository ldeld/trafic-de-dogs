class CorrectDefaultSitterColumn < ActiveRecord::Migration[5.0]
  def change
    change_column_default :users, :sitter, false
  end
end
