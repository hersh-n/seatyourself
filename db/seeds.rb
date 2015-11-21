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
tequila = Restaurant.create(name:"El Caballito Tequila Bar", address:"220 King Street W.", summary:"Tacos and Pitchers", website:"www.elcaballito.ca", rating:4.7, cuisine:"Mexican", cost:4)
Table.create(capacity:10, timeslot:time, booked:false, restaurant:tequila)
Table.create(capacity:8, timeslot:time, booked:false, restaurant:tequila)
Table.create(capacity:6, timeslot:time, booked:false, restaurant:tequila)
Table.create(capacity:4, timeslot:time, booked:false, restaurant:tequila)
Table.create(capacity:2, timeslot:time, booked:false, restaurant:tequila)