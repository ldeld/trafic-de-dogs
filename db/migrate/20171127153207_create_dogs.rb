class CreateDogs < ActiveRecord::Migration[5.0]
  def change
    create_table :dogs do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.integer :age
      t.string :vaccines
      t.text :habitudes

      t.timestamps
    end
  end
end
