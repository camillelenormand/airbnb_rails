class CreateRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|
      t.integer :total_beds
      t.integer :price
      t.text :description
      t.boolean :wifi
      t.text :welcome_message

      t.timestamps
    end
  end
end
