class CreateAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :availabilities do |t|
      t.date :start_date
      t.date :end_date
      t.references :sitter, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
