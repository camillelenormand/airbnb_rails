class AddForeignKeys < ActiveRecord::Migration[7.1]
  def change
    # This migration will create a city_id column in the room table
    add_reference :rooms, :city, null: false, foreign_key: true
    # This migration will create a guest_id column in the booking table
    add_reference :bookings, :guest, null: false, foreign_key: { to_table: :users } 
    # This migration will create a admin_id column in the booking table
    add_reference :rooms, :admin, null: false, foreign_key: { to_table: :users } 
    # This migration will create a room_id column in the booking table
    add_reference :bookings, :room, null: false, foreign_key: true
    # This migration will create a owner_id column in the room table
    add_reference :rooms, :owner, foreign_key: { to_table: :users } 
  end
end
