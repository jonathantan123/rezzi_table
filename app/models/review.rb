class Review < ApplicationRecord
  belongs_to :reservation
  validates :rating, presence: true
  validates :description, length: {minimum: 250}

  def restaurant_name 
    self.reservation.restaurant.name 
  end 


end
