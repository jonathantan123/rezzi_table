# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


City.create([
    {name: "New York City"},
    {name: "Chicago"},
    {name: "Boston"},
    {name: "Los Angeles"},
    {name: "San Francisco"}
])

Restaurant.create([
    {name: "Otto Enoteca & Pizzeria", city_id: 21},
    {name: "Cafe 11", city_id: 21},
    {name: "The Grotto Pizzeria", city_id: 21},
    {name: "Blarney Pub", city_id: 21},
    {name: "Toro Loco", city_id: 22},
    {name: "Antica", city_id: 22},
    {name: "Luke's Lobster", city_id: 22},
    {name: "Subway", city_id: 23},
    {name: "Ramen Ramen", city_id: 23},
    {name: "Flavors Cafe", city_id: 23},
    {name: "Gunbae", city_id: 23},
    {name: "Ecco", city_id: 24},
    {name: "Serafina", city_id: 24},
    {name: "1803 NYC", city_id: 24},
    {name: "Gran Morsi", city_id: 25},
    {name: "Augustine", city_id: 25},
    {name: "Sarabeth's", city_id: 25},
    {name: "Momofuku", city_id: 25}
])

User.create([
    {name: "Brittany Spears", username: "spears1990", password: "password"},
    {name: "Justin Bieber", username: "thebeebs", password: "beeberbeliever"},
    {name: "Barack Obama", username: "bobama1990", password: "password"},
    {name: "Miley Cyrus", username: "mileyc1990", password: "password"}
])

Reservation.create([
    {reservation_date: "10-5-2019-", reservation_time: "19:00", restaurant_id: 73, user_id: 17, party_size: 1},
    {reservation_date: "2-19-2019", reservation_time: "12:30", restaurant_id: 73, user_id: 17, party_size: 6},
    {reservation_date: "12-25-2019", reservation_time: "14:00", restaurant_id: 80, user_id: 18, party_size: 3},
    {reservation_date: "15-11-2019", reservation_time: "20:00", restaurant_id: 76, user_id: 19, party_size: 2},
    {reservation_date: "10-19-2019", reservation_time: "19:30", restaurant_id: 82, user_id: 20, party_size: 12},
    {reservation_date: "1-11-2019", reservation_time: "19:00", restaurant_id: 90, user_id: 19, party_size: 2},
    {reservation_date: "12-10-2019", reservation_time: "18:00", restaurant_id: 81, user_id: 18, party_size: 5},
    {reservation_date: "10-5-2019", reservation_time: "18:30", restaurant_id: 78, user_id: 20, party_size: 10}
])

Review.create([
    {reservation_id: 9, rating: 5, description: "It was great"},
    {reservation_id: 10, rating: 1, description: "I HATE IT"},
    {reservation_id: 11, rating: 5, description: "It was okay"},
    {reservation_id: 12, rating: 5, description: "It was good"},
    {reservation_id: 13, rating: 5, description: "It was good"},
    {reservation_id: 14, rating: 5, description: "It was good"},
    {reservation_id: 15, rating: 5, description: "It was good"},
    {reservation_id: 16, rating: 5, description: "It was good"}
])