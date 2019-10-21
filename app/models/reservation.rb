class Reservation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  has_one :review
end
