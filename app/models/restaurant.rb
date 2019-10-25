class Restaurant < ApplicationRecord
  belongs_to :city
  has_many :reservations
  has_many :reviews, through: :reservations


  def self.search(search)
    if search 
      @restaurants= Restaurant.where(name: "#{search}").or(Restaurant.where(cuisine: "#{search}")).or(Restaurant.where(neighborhood: "#{search}"))

    else 
      @restaurants= Restaurant.all 
    end 
  end 

end


# Restaurant.where("name: LIKE :search OR cuisine: LIKE :search OR neighboorhood: LIKE :search, search: #{search}")  
