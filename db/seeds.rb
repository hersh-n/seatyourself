# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#No relationships between these objects have been set.

time = DateTime.new(2016, 1, 1, 19)

User.create(first_name:"Admin", last_name:"Istrator", email:"admin@app.com", password:"admin")
tequila = Restaurant.create(name:"El Caballito Tequila Bar", address:"220 King Street W.", summary:"Tacos and Pitchers", website:"www.elcaballito.ca", rating:4.7, cuisine:"Mexican", cost:4, photo:"http://www.elcaballito.ca/wp-content/uploads/El-Patio-119-e1443114859678.jpg")
Table.create(capacity:10, timeslot:time, booked:false, restaurant:tequila)
Table.create(capacity:8, timeslot:time, booked:false, restaurant:tequila)
Table.create(capacity:6, timeslot:time, booked:false, restaurant:tequila)
Table.create(capacity:4, timeslot:time, booked:false, restaurant:tequila)
Table.create(capacity:2, timeslot:time, booked:false, restaurant:tequila)

artisano = Restaurant.create(name:"Artisano Bakery Cafe", address:"214 King Street W.", summary:"Bright bakery/cafe serving light lunches, pasta & pizza, plus a market with breads & roasted coffee.", website:"www.artisanobakery.com", rating:4.2, cuisine:"Cafe", cost:3, photo:"http://www.blogto.com/upload/2009/02/20090228-ArtisanApp.jpg")
Table.create(capacity:10, timeslot:time, booked:false, restaurant:artisano)
Table.create(capacity:8, timeslot:time, booked:false, restaurant:artisano)
Table.create(capacity:6, timeslot:time, booked:false, restaurant:artisano)
Table.create(capacity:4, timeslot:time, booked:false, restaurant:artisano)
Table.create(capacity:2, timeslot:time, booked:false, restaurant:artisano)

canoe = Restaurant.create(name:"Canoe", address:"66 Wellington St. W.", summary:"A stylish, swanky space on the 54th floor, with inventive Canadian cuisine & exceptional views.", website:"No Website Listed", rating:4.3, cuisine:"Canadian", cost:4, photo:"http://www.spotlighttoronto.com/_content/2011/staff/sureshdoss/canoe2011/canoe_jan2011-03.jpg")
Table.create(capacity:10, timeslot:time, booked:false, restaurant:canoe)
Table.create(capacity:8, timeslot:time, booked:false, restaurant:canoe)
Table.create(capacity:6, timeslot:time, booked:false, restaurant:canoe)
Table.create(capacity:4, timeslot:time, booked:false, restaurant:canoe)
Table.create(capacity:2, timeslot:time, booked:false, restaurant:canoe)

buca = Restaurant.create(name:"Buca", address:"604 King St. W.", summary:"Rustic Italian fare, including housemade pastas & charcuterie, served in an upscale setting.", website:"www.buca.ca", rating:4.2, cuisine:"Italian", cost:3, photo:"http://torontolife.com/wp-content/uploads/2014/01/bar-buca-toronto-restaurant-03.jpg")
Table.create(capacity:10, timeslot:time, booked:false, restaurant:buca)
Table.create(capacity:8, timeslot:time, booked:false, restaurant:buca)
Table.create(capacity:6, timeslot:time, booked:false, restaurant:buca)
Table.create(capacity:4, timeslot:time, booked:false, restaurant:buca)
Table.create(capacity:2, timeslot:time, booked:false, restaurant:buca)