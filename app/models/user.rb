class User < ApplicationRecord
  has_many :rooms, foreign_key: "owner_id"
  has_many :bookings, foreign_key: "guest_id"
  has_many :bookings, foreign_key: "admin_id"
end
