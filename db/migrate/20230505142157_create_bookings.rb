class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.integer :duration
      t.integer :total_price
      t.boolean :paid

      t.timestamps
    end
  end
end
