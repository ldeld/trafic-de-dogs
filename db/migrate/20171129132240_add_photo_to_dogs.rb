class AddPhotoToDogs < ActiveRecord::Migration[5.0]
  def change
    add_column :dogs, :photo, :string
  end
end
