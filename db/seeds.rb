# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# City.create([
#     {name: "New York City"},
#     {name: "Chicago"},
#     {name: "Boston"},
#     {name: "Los Angeles"},
#     {name: "San Francisco"}
# ])

# Restaurant.create([
#     {name: "Otto Enoteca & Pizzeria", city_id: 1},
#     {name: "Cafe 11", city_id: 1},
#     {name: "The Grotto Pizzeria", city_id: 1},
#     {name: "Blarney Pub", city_id: 1},
#     {name: "Toro Loco", city_id: 2},
#     {name: "Antica", city_id: 2},
#     {name: "Luke's Lobster", city_id: 2},
#     {name: "Subway", city_id: 3},
#     {name: "Ramen Ramen", city_id: 3},
#     {name: "Flavors Cafe", city_id: 3},
#     {name: "Gunbae", city_id: 3},
#     {name: "Ecco", city_id: 4},
#     {name: "Serafina", city_id: 4},
#     {name: "1803 NYC", city_id: 4},
#     {name: "Gran Morsi", city_id: 5},
#     {name: "Augustine", city_id: 5},
#     {name: "Sarabeth's", city_id: 5},
#     {name: "Momofuku", city_id: 5}
# ])


augustine = Restaurant.find(16)
augustine.description = "Decorous brasserie by Keith McNally for high-end French dishes, steaks & cocktails."
augustine.address = "5 Beekman St, New York, NY 10038"
augustine.price_range = "$$$$"
augustine.neighborhood = "Financial District"
augustine.cuisine = "French"
augustine.image = "7"
augustine.save

sarabeths = Restaurant.find(17)
sarabeths.description = "Posh chain serving American fare, including brunch & dessert."
sarabeths.address = "40 Central Park S, New York, NY 10021"
sarabeths.price_range = "$$$"
sarabeths.neighborhood = "Nomad"
sarabeths.cuisine = "American"
sarabeths.image = "7"
sarabeths.save

momofuku = Restaurant.find(18)
momofuku.description = "David Chang's Asian-accented American fare comes with an open kitchen, spare decor & dinner crowds."
momofuku.address = "171 1st Avenue, New York, NY 10003"
momofuku.price_range = "$$"
momofuku.neighborhood = "East Village"
momofuku.cuisine = "Asian"
momofuku.image = "7"
momofuku.save



# User.create([
#     {name: "Brittany Spears", username: "spears1990", password: "password"},
#     {name: "Justin Bieber", username: "thebeebs", password: "beeberbeliever"},
#     {name: "Barack Obama", username: "bobama1990", password: "password"},
#     {name: "Miley Cyrus", username: "mileyc1990", password: "password"}
# ])

# Reservation.create([
#     {reservation_date: "10-5-2019-", reservation_time: "19:00", restaurant_id: 1, user_id: 1, party_size: 1},
#     {reservation_date: "2-19-2019", reservation_time: "12:30", restaurant_id: 1, user_id: 1, party_size: 6},
#     {reservation_date: "12-25-2019", reservation_time: "14:00", restaurant_id: 13, user_id: 2, party_size: 3},
#     {reservation_date: "15-11-2019", reservation_time: "20:00", restaurant_id: 9, user_id: 3, party_size: 2},
#     {reservation_date: "10-19-2019", reservation_time: "19:30", restaurant_id: 17, user_id: 3, party_size: 12},
#     {reservation_date: "1-11-2019", reservation_time: "19:00", restaurant_id: 8, user_id: 2, party_size: 2},
#     {reservation_date: "12-10-2019", reservation_time: "18:00", restaurant_id: 9, user_id: 4, party_size: 5},
#     {reservation_date: "10-5-2019", reservation_time: "18:30", restaurant_id: 13, user_id: 4, party_size: 10}
# ])

# Review.create([
#     {reservation_id: 1, rating: 5, description: "It was great"},
#     {reservation_id: 2, rating: 1, description: "I HATE IT"},
#     {reservation_id: 3, rating: 5, description: "It was okay"},
#     {reservation_id: 4, rating: 5, description: "It was good"},
#     {reservation_id: 5, rating: 5, description: "It was good"},
#     {reservation_id: 6, rating: 5, description: "It was good"},
#     {reservation_id: 7, rating: 5, description: "It was good"},
#     {reservation_id: 8, rating: 5, description: "It was good"}
# ])

