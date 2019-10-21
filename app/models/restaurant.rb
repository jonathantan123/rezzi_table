class Restaurant < ApplicationRecord
  belongs_to :city
  has_many :reservations
  has_many :reviews, through: :reservations
end
