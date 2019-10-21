class User < ApplicationRecord
    has_many :reservations
    has_many :reviews, through: :reservations

    # def reservation_restaurant_names
    #     self.reservations.map {|res| res.restaurant.name}
    # end
end
