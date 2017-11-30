class CreateBookDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :book_dogs do |t|
      t.references :dog, foreign_key: true
      t.references :booking, foreign_key: true
      t.timestamps
    end
  end
end
