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


r1 = Restaurant.find(1)
r1.name = "Otto Enoteca Pizzeria"
r1.city_id = 1
r1.description = "Modeled after an Italian train station, Joe Bastianich's OTTO is located in the historic One Fifth Avenue building. Serving classic Italian pizzas and pastas, a large selection of house-cured meats, Italian and local cheeses, artisanal gelato, and boasting a 750+ bottle all-Italian wine list, OTTO has become a beloved New York classic in the heart of Greenwich Village for locals and visitors alike."
r1.address = '1 Fifth Avenue New York, NY 10003'
r1.price_range = '$$'
r1.neighborhood = 'Greenwich Village'
r1.cuisine = 'Italian'
r1.save

r2 = Restaurant.find(2)
r2.name = "Tavern on the Green"
r2.city_id = 1
r2.description = "Magical is a word thrown around a lot when discussing Tavern On The Green and one can’t help but feel magic in the air. Jim and David, architect Richard Lewis and landscape architect Robin Key, preserved the Victorian/ Gothic elegance of the semi-circular building; it is authentic, natural, elegant and sexy. It has been re-built to spectacular precision and the décor is of a grand farmhouse one might find on the property of an Italian Villa or a historic Hudson River Valley mansion."
r2.address = '1 Tavern on the Green New York, NY 10023'
r2.price_range = '$$$'
r2.neighborhood = 'Midtown West'
r2.cuisine = 'American'
r2.save

r3 = Restaurant.find(3)
r3.city_id = 1
r3.name = "Del Frisco's Grille"
r3.description = "Del Frisco’s Grille is a stylish, modern restaurant with a vibrant ambiance where life is celebrated around the table. Boasting premium American classics infused with fresh, seasonal ingredients, the Grille’s thoughtful menu features Del Frisco’s Prime, hand-cut steaks and craveable, shareable dishes such as the signature Cheesesteak Eggrolls. With an award-winning yet accessible wine list and hand-crafted cocktails, Del Frisco’s Grille takes guests through a social culinary journey with each experience, no matter the occasion. Del Frisco's Grille is in the heart of Mid-Town at Rockefeller Center. Join us on our outdoor patio on the historic Rockefeller Plaza. *Reservations are accepted for indoor dining only. Patio seating is available on a first-come, first-served basis."
r3.address = '50 Rockefeller Plaza New York, NY 10020'
r3.price_range = '$$$'
r3.neighborhood = 'Midtown'
r3.cuisine = 'American'
r3.save

r4 = Restaurant.find(4)
r4.city_id = 1
r4.name = "Crave Fishbar"
r4.description = "Crave Fishbar Midtown is a vibrant, convivial restaurant in Manhattan serving an inspired seafood menu from chef Todd Mitgang. An eclectic mix of reclaimed materials and custom made chairs and tables lend a beachy, rustic feel to the space, which houses a 25-foot-long bar where guests can order from the full dinner menu along with cocktails and wine from a mounted bottle display. Journey up to the 2nd floor and watch an army of shuckers plating raw bar platters. Approachable, sophisticated dishes feature local seafood, crudos, and meat dishes that are thoughtfully prepared with both familiar and exotic ingredients. Crave Fishbar has taken its place as a neighborhood fixture, providing locals and newcomers alike with a elegant, inviting experience."
r4.address = '945 2nd Avenue New York, NY 10022'
r4.price_range = '$$'
r4.neighborhood = 'Midtown'
r4.cuisine = 'Seafood'
r4.save

r5 = Restaurant.find(5)
r5.city_id = 1
r5.name = "Cantina Rooftop"
r5.description = "Cantina Rooftop Restaurant & Lounge, located atop Stage 48, features an innovative Modern Mexican dinner menu and expertly crafted cocktails with a focus on Margaritas."
r5.address = '605 West 48th St New York, NY 10036'
r5.price_range = '$$'
r5.neighborhood = 'Midtown'
r5.cuisine = 'Mexican'
r5.save

r7 = Restaurant.find(7)
r7.city_id = 1
r7.name = "Toloache"
r7.description = "Welcome to Toloache (pronounced toh-lo-AH-tchay), chef-owner Julian Medina’s contemporary Mexican bistro located in the heart of the Theater District. Toloache is named after a flowering plant famed in Mexico for its use in love potions. We hope that when you dine with us you too will fall under the spell of chef Medina’s creative cooking, which incorporates seasonal and natural ingredients and more than a dozen types of chilies. Our festive, two-story space features a guacamole and ceviche bar, a wood-burning oven, and an exceptional tequila list, along with elegant decorative elements imported from Mexico. We looking forward to seeing you soon."
r7.address = '251 West 50th Street New York, NY 10012'
r7.price_range = '$$'
r7.neighborhood = 'Midtown'
r7.cuisine = 'Mexican'
r7.save

r8 = Restaurant.find(8)
r8.city_id = 1
r8.name = "Gyu-Kaku"
r8.description = "Gyu-Kaku Japanese BBQ in Times Square is the ideal spot for an amazing experience in New York!"
r8.address = '321 W 44th Street Unit 103 New York, NY 10036'
r8.price_range = '$$'
r8.neighborhood = 'Midtown'
r8.cuisine = 'Japanese'
r8.save

r9 = Restaurant.find(9)
r9.city_id = 1
r9.name = "Smoke Jazz and Supper Club"
r9.description = "Smoke has augmented its reputation as one of Manhattan’s most distinguished jazz venues with an addition very uncommon to jazz clubs—great food. Smoke serves innovative American Bistro fare developed by critically acclaimed executive chef Patricia Williams. Smoke is proud to be New York's only boutique Jazz & Supper Club with an award winning chef and world-class jazz seven nights a week."
r9.address = '2751 Broadway New York, NY 10025'
r9.price_range = '$$'
r9.neighborhood = 'Upper West Side'
r9.cuisine = 'American'
r9.save

r10 = Restaurant.find(10)
r10.city_id = 1
r10.name = "Lido"
r10.description = "Lido’s menu is Northern Italian. The menu can be described as fresh, simple, and delicious. Flavors are layered so that each one stands out but does not compete with others in the dish."
r10.address = '2168 Frederick Douglass Blvd. New York, NY 10026'
r10.price_range = '$$'
r10.neighborhood = 'Harlem'
r10.cuisine = 'Italian'
r10.save

r11 = Restaurant.find(11)
r11.city_id = 1
r11.name = "Crave Fishbar"
r11.description = "At Crave Fishbar, we source and serve locally caught seafood in a sophisticated yet fun environment. We are a sustainable, eco-conscious restaurant, using seasonal, organic when possible, ingredients that reflect our commitment to the environment and, especially, marine life. Our relationships with Long Island fishermen have been nurtured and supported through our sister restaurant, South Edison, in Montauk, NY and we were the first NYC partner with the Monterey Bay Aquarium, a national leader in ocean sustainability and charter members of the James Beard Foundation's Smart Catch Program.We are the home of #oystergram happy hour where we offer $1 oysters along with a selection of 16-18 bivavles from east and west coast from 5-7 weekdays and 4-6pm on weekends. Seasonal Craft cocktails and local beers along with wines on tap lend to the festive yet curated beverage experience."
r11.address = '428 Amsterdam Ave New York, NY 10024'
r11.price_range = '$$'
r11.neighborhood = 'Upper West Side'
r11.cuisine = 'Seafood'
r11.save

r12 = Restaurant.find(12)
r12.city_id = 1
r12.name = "Awadh"
r12.description = "Awadh, once a princely state, is among the most ancient of Hindu regions. The enchanting history of this land of the Nawabs, kings known for their refined and extravagant lifestyles, is recognized through the richness of its cuisine. Here at Awadh, we bring you these bold flavors that balance elements of spice, intensity and acidity."
r12.address = '2588 Broadway New York, NY 10025'
r12.price_range = '$$'
r12.neighborhood = 'Upper West Side'
r12.cuisine = 'Indian'
r12.save

r13 = Restaurant.find(13)
r13.city_id = 1
r13.name = "Carmine's"
r13.description = "Carmine's simple and very popular concept is to serve every meal in the style of an Italian American wedding feast - which means large portions of home-style antipasti, pastas, seafood and meat entrees served on large platters designed for sharing. An entree here could easily feed three to four average eaters. Located in a sprawling, former grand ballroom on the Upper West Side of Manhattan, this is the original Carmines. Designed by Peter Niemitz, the interiors evoke the images of the quintessential New York restaurant. With elements and details from the 1920s to the 1940s, the restaurant has the look and feel of a place that has been around for much longer than it's 1990 opening. If you are in the market for freshly prepared family style Italian food that is served in huge portions at reasonable prices, this is the place for you."
r13.address = '2450 Broadway New York, NY 10024'
r13.price_range = '$$'
r13.neighborhood = 'Upper West Side'
r13.cuisine = 'Italian'
r13.save

r14 = Restaurant.find(14)
r14.city_id = 1
r14.name = "Elea"
r14.description = "We are bringing 'True Greek' to the Upper West Side. At eléa, we only use the finest quality ingredients (Grade 1 Yellow Fin Tuna, Loche Duarte Scottish Salmon) to create traditional 'True Greek' fare. Now Open, on the heels of the successful summer opening of Kyma Flatiron, sister restaurant eléa on Manhattan’s Upper West Side. With an open split-level design punctuated with traditional Grecian pottery and décor, eléa will transport guests to a romantic island vacation while also evoking an intimate, softly lit aesthetic perfectly suited for the uptown neighborhood. Meaning “olive” in ancient Greek, eléa offers guests a menu of soulful and modern Greek dishes that encompass flavors across the region’s many islands and terrains."
r14.address = '217 W 85th St New York, NY 10024'
r14.price_range = '$$'
r14.neighborhood = 'Upper West Side'
r14.cuisine = 'Greek'
r14.save

r15 = Restaurant.find(15)
r15.city_id = 1
r15.name = "Cafe Du Soleil"
r15.description = "A charming French bistro featuring authentic French cuisine with the flavors of Provence. The casual ambiance, exciting specials and themed French specialty nights make Cafe du Soleil a popular Upper West Side Bistro. A solid French restaurant with a fantastic staff. Enjoy a slice of France in Manhattan!"
r15.address = '2723 Broadway New York, NY 10025'
r15.price_range = '$$'
r15.neighborhood = 'Upper West Side'
r15.cuisine = 'French'
r15.save

r16 = Restaurant.find(16)
r16.city_id = 1
r16.name = "Pylos"
r16.description = "PYLOS honors the breadth of traditional Greek cuisine by bringing fresh, wholesome cooking from all regions of Greece to an elegant, contemporary and comfortable setting in the East Village."
r16.address = '128 East 7th Street New York, NY 10009'
r16.price_range = '$$'
r16.neighborhood = 'East Village'
r16.cuisine = 'Greek'
r16.save

r17 = Restaurant.find(17)
r17.city_id = 1
r17.name = "OIJI"
r17.description = "We are a Korean restaurant located in East Village serving small shareable plates. Come and enjoy our refined Korean cuisine with traditional flavors."
r17.address = '119 1st Ave. New York, NY 10003'
r17.price_range = '$$'
r17.neighborhood = 'East Village'
r17.cuisine = 'Korean'
r17.save

r18 = Restaurant.find(18)
r18.city_id = 1
r18.name = "The Mermaid Inn East Village"
r18.description = "New York’s favorite fish house serves up classic seafood specialties in a relaxed and comfortable setting. Restaurateur Danny Abrams’ flagship Mermaid Inn — dubbed an inexpensive version of Le Bernardin by New York Magazine — features a cozy, secluded garden in back, sidewalk café in the front and a dining room that’s always buzzing. The cuisine and décor are sure to bring back your favorite memories of New England."
r18.address = '96 2nd Avenue New York, NY 10003'
r18.price_range = '$$$'
r18.neighborhood = 'East Village'
r18.cuisine = 'Seafood'
r18.save

r6 = Restaurant.find(6)
r6.city_id = 1
r6.name = "La Palapa"
r6.description = "La Palapa combines authentic Mexican home cooking with a festive bar and a warm and friendly atmosphere which makes for the perfect place to dine or celebrate any occasion! We specialize in 'Mexico City style tacos and quesadillas and regional home cooking. Our menu includes such dishes as Tacos al Pastor, Mole Negro Oaxaqueno, Salsa Pibil and many other specialties from different regions of Mexico. Our award winning Margaritas are all made with fresh juices and are delicious, especially when you add house made hibiscus aqua fresca and a chile-piquin salted rim! Refreshing Mexican beer cocktails, such as the Michelada and the Chelada are even given special attention at La Palapa. La Palapa is available for catering on or off premise. We specialize in creating menus for private parties and events."
r6.address = "77 St. Mark's Place New York, NY 10003"
r6.price_range = '$$'
r6.neighborhood = 'East Village'
r6.cuisine = 'Mexican'
r6.save

# r20 = Restaurant.find(20)
# r20.city_id = 1
# r20.name = "The Smith"
# r20.description = "The Smith is a casual American Brasserie with four upbeat locations in New York City: The Smith East Village, The Smith Midtown The Smith Lincoln Square, and The Smith NoMad. Utilizing local products and purveyors, the breakfast, lunch, brunch and dinner menus feature a selection of familiar bistro dishes. The Smith attracts colleagues for a drink after work, business dinners, a quick bite or drink before a show, late night revelers, families for Sunday brunch and more. Offering private rooms at all locations, guests can stop by for all occasions."
# r20.address = '55 3rd Avenue New York, NY 10003'
# r20.price_range = '$$'
# r20.neighborhood = 'East Village'
# r20.cuisine = 'American'
# r20.save

# r21 = Restaurant.find(21)
# r21.city_id = 1
# r21.name = "North Square"
# r21.description = "North Square is committed to a long-standing Greenwich Village tradition: offering generous, and genuine, hospitality. We serve dinner every day in our dining room and separate, speak-easy lounge, lunch on weekdays, brunch on Saturday, and a Jazz Brunch every Sunday in the lounge. Our approach to seasonal American food draws inspiration from both world traditions and local ingredients, some sourced from our very own rooftop garden. Wine and spirit choices span the globe, with a thoughtful emphasis on American, and especially New York, selections."
# r21.address = '103 Waverly Place New York, NY 10011'
# r21.price_range = '$$$'
# r21.neighborhood = 'Greenwich Village'
# r21.cuisine = 'American'
# r21.save


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