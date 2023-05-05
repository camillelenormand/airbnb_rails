class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :email
      t.string :phone_number
      t.text :description
      t.string :owner
      t.string :boolean

      t.timestamps
    end
  end
end
