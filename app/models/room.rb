class Room < ApplicationRecord
  belongs_to :city
  has_many :bookings
  belongs_to :owner, class_name: "User"

end
