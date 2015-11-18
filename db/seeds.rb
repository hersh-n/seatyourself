# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#User ADMIN owns restaurant EL CABALLITO has two TABLES sharing one RESERVATION
User.create(first_name:"Admin", last_name:"Istrator", email:"admin@app.com", password:"admin")
Restaurant.create(name:"El Caballito Tequila Bar", address:"220 King Street W.", summary:"Tacos and Pitchers", website:"www.elcaballito.ca", user_id:1)
Table.create(capacity:8, timeslot:Time.now, booked:false, restaurant_id:1)
Table.create(capacity:2, timeslot:Time.now, booked:false, restaurant_id:1)
Reservation.create(party_size:8, user_id:1)