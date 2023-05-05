class Booking < ApplicationRecord
  belongs_to :room
  belongs_to :guest, class_name: "User"
  has_one :admin, class_name: "User"
end
