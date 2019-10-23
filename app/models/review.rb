class Review < ApplicationRecord
  belongs_to :reservation
  validates :rating, presence: true

  def restaurant_name 
    self.reservation.restaurant.name 
  end 


end
