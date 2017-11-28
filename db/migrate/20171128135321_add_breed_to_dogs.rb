class AddBreedToDogs < ActiveRecord::Migration[5.0]
  def change
    add_column :dogs, :breed, :string
  end
end
