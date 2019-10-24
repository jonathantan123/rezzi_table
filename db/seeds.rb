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
    {name: "Otto Enoteca & Pizzeria", city_id: 1},
    {name: "Cafe 11", city_id: 1},
    {name: "The Grotto Pizzeria", city_id: 1},
    {name: "Blarney Pub", city_id: 1},
    {name: "Toro Loco", city_id: 2},
    {name: "Antica", city_id: 2},
    {name: "Luke's Lobster", city_id: 2},
    {name: "Subway", city_id: 3},
    {name: "Ramen Ramen", city_id: 3},
    {name: "Flavors Cafe", city_id: 3},
    {name: "Gunbae", city_id: 3},
    {name: "Ecco", city_id: 4},
    {name: "Serafina", city_id: 4},
    {name: "1803 NYC", city_id: 4},
    {name: "Gran Morsi", city_id: 5},
    {name: "Augustine", city_id: 5},
    {name: "Sarabeth's", city_id: 5},
    {name: "Momofuku", city_id: 5}
])


User.create([
    {name: "Brittany Spears", username: "spears1990", password: "password"},
    {name: "Justin Bieber", username: "thebeebs", password: "beeberbeliever"},
    {name: "Barack Obama", username: "bobama1990", password: "password"},
    {name: "Miley Cyrus", username: "mileyc1990", password: "password"}
])

Reservation.create([
    {reservation_date: "2019-4-23", reservation_time: "19:00", restaurant_id: 1, user_id: 1, party_size: 1},
    {reservation_date: "2019-4-23", reservation_time: "12:30", restaurant_id: 1, user_id: 1, party_size: 6},
    {reservation_date: "2019-4-23", reservation_time: "14:00", restaurant_id: 13, user_id: 2, party_size: 3},
    {reservation_date: "2019-4-23", reservation_time: "20:00", restaurant_id: 9, user_id: 3, party_size: 2},
    {reservation_date: "2019-4-23", reservation_time: "19:30", restaurant_id: 17, user_id: 3, party_size: 12},
    {reservation_date: "2019-4-23", reservation_time: "19:00", restaurant_id: 8, user_id: 2, party_size: 2},
    {reservation_date: "2019-4-23", reservation_time: "18:00", restaurant_id: 9, user_id: 4, party_size: 5},
    {reservation_date: "2019-4-23", reservation_time: "18:30", restaurant_id: 13, user_id: 4, party_size: 10}
])

Review.create([
    {reservation_id: 1, rating: 5, food_rating: 3, decor_rating: 4, service_rating: 2,description: "It was great"},
    {reservation_id: 2, rating: 1, food_rating: 3, decor_rating: 4, service_rating: 2,description: "I HATE IT"},
    {reservation_id: 3, rating: 5, food_rating: 3, decor_rating: 4, service_rating: 2,description: "It was okay"},
    {reservation_id: 4, rating: 5, food_rating: 3, decor_rating: 4, service_rating: 2,description: "It was good"},
    {reservation_id: 5, rating: 5, food_rating: 3, decor_rating: 4, service_rating: 2,description: "It was good"},
    {reservation_id: 6, rating: 5, food_rating: 3, decor_rating: 4, service_rating: 2,description: "It was good"},
    {reservation_id: 7, rating: 5, food_rating: 3, decor_rating: 4, service_rating: 2,description: "It was good"},
    {reservation_id: 8, rating: 5, food_rating: 3, decor_rating: 4, service_rating: 2,description: "It was good"}
])

# Reservation.create([
#     {reservation_date: "10-5-2019", reservation_time: "18:00", restaurant_id: 18, user_id: 12, party_size: 2},
#     {reservation_date: "10-10-2019", reservation_time: "19:30", restaurant_id: 17, user_id: 12, party_size: 5},
#     {reservation_date: "9-21-2019", reservation_time: "17:00", restaurant_id: 16, user_id: 12, party_size: 10},
#     {reservation_date: "8-5-2019", reservation_time: "17:30", restaurant_id: 15, user_id: 12, party_size: 6},
#     {reservation_date: "11-25-2019", reservation_time: "19:00", restaurant_id: 14, user_id: 12, party_size: 2},
#     {reservation_date: "10-31-2019", reservation_time: "18:00", restaurant_id: 13, user_id: 12, party_size: 2},
#     {reservation_date: "12-25-2019", reservation_time: "18:30", restaurant_id: 12, user_id: 12, party_size: 5}
# ])

# r1 = Reservation.find(1)
# r1.reservation_date = '2019-10-05'
# r1.reservation_time = '5:30pm'
# r1.save

# r2 = Reservation.find(2)
# r2.reservation_date = '2019-02-19'
# r2.reservation_time = '7:30pm'
# r2.save

# r3 = Reservation.find(3)
# r3.reservation_date = '2019-12-25'
# r3.reservation_time = '8:00pm'
# r3.save

# r4 = Reservation.find(4)
# r4.reservation_date = '2019-11-10'
# r4.reservation_time = '9:00pm'
# r4.save

# r5 = Reservation.find(5)
# r5.reservation_date = '2019-10-19'
# r5.reservation_time = '6:00pm'
# r5.save

# r7 = Reservation.find(7)
# r7.reservation_date = '2019-10-12'
# r7.reservation_time = '6:30pm'
# r7.save

# r8 = Reservation.find(8)
# r8.reservation_date = '2019-12-19'
# r8.reservation_time = '7:00pm'
# r8.save

# r9 = Reservation.find(9)
# r9.reservation_date = '2019-10-1'
# r9.reservation_time = '8:00pm'
# r9.save

# r10 = Reservation.find(10)
# r10.reservation_date = '2019-11-17'
# r10.reservation_time = '10:30pm'
# r10.save

# r11 = Reservation.find(11)
# r11.reservation_date = '2019-10-26'
# r11.reservation_time = '9:30pm'
# r11.save

# r12 = Reservation.find(12)
# r12.reservation_date = '2019-10-23'
# r12.reservation_time = '5:30pm'
# r12.save

# r13 = Reservation.find(13)
# r13.reservation_date = '2019-10-23'
# r13.reservation_time = '8:30pm'
# r13.save

# r14 = Reservation.find(14)
# r14.reservation_date = '2019-10-25'
# r3.reservation_time = '10:30pm'
# r14.save

# r15 = Reservation.find(15)
# r15.reservation_date = '2019-10-26'
# r15.reservation_time = '9:30pm'
# r15.save

# r16 = Reservation.find(16)
# r16.reservation_date = '2019-10-10'
# r16.reservation_time = '7:00pm'
# r16.save

# r17 = Reservation.find(17)
# r17.reservation_date = '2019-09-21'
# r17.reservation_time = '8:00pm'
# r17.save

# r18 = Reservation.find(18)
# r18.reservation_date = '2019-08-05'
# r18.reservation_time = '8:30pm'
# r18.save

# r19 = Reservation.find(19)
# r19.reservation_date = '2019-11-25'
# r19.reservation_time = '4:30pm'
# r19.save

# r20 = Reservation.find(20)
# r20.reservation_date = '2019-10-31'
# r20.reservation_time = '5:00pm'
# r20.save

# r21 = Reservation.find(21)
# r21.reservation_date = '2019-12-25'
# r21.reservation_time = '9:00pm'
# r21.save

# r22 = Reservation.find(22)
# r22.reservation_date = '2019-10-25'
# r22.reservation_time = '8:30pm'
# r22.save

# r23 = Reservation.find(23)
# r23.reservation_date = '2019-02-02'
# r23.reservation_time = '5:00pm'
# r23.save

# r24 = Reservation.find(24)
# r24.reservation_date = '2019-12-14'
# r24.reservation_time = '7:00pm'
# r24.save