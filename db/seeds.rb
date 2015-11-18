# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#No relationships between these objects have been set.
User.create(first_name:"Admin", last_name:"Istrator", email:"admin@app.com", password:"admin")
Restaurant.create(name:"El Caballito Tequila Bar", address:"220 King Street W.", summary:"Tacos and Pitchers", website:"www.elcaballito.ca")
Table.create(capacity:8, timeslot:Time.now, booked:false)
Table.create(capacity:2, timeslot:Time.now, booked:false)
Reservation.create(party_size:8)