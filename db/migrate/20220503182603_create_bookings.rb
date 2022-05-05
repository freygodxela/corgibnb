class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.date :booking_date
      t.references :corgi, null: false, foreign_key: true

      t.timestamps
    end
  end
end
