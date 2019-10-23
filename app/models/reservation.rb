class Reservation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  has_one :review

  def restaurant_name
    self.restaurant.name 
  end 


end
