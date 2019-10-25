class Review < ApplicationRecord
  belongs_to :reservation
  validates :food_rating, presence: true
  validates :decor_rating, presence: true
  validates :service_rating, presence: true
  validates :description, length: {minimum: 50}

  def restaurant_name 
    self.reservation.restaurant.name 
  end 

  def average_rating 
    (self.food_rating + self.decor_rating + self.service_rating) / 3
  end 



end
