require 'bcrypt'

class User < ApplicationRecord
    has_many :reservations
    has_many :reviews, through: :reservations
    has_secure_password
    validates :username, presence: true
    validates_uniqueness_of :username
    validates :password, length: {minimum: 6}

    def reservation_restaurants
        self.reservations
    end 
end
