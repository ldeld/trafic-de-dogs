class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :owner
      t.references :sitter
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
