class AddPhotoCardToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :photo_card, :string
  end
end
