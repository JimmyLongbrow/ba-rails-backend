# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
print "Creating Airplanes... "
Airplane.destroy_all

a1 = Airplane.create(
  name:"747",
  row:24,
  column:4
)

puts "created #{ Airplane.count } Airplanes."

print "Creating Flights... "
Flight.destroy_all

f1 = Flight.create(
  date:"28/Aug/2020",
  flight_number:747,
  origin:"Sydney",
  destination:"Melbourne",
  airplane_id:a1.id
)

puts "created #{ Flight.count } Flights."

a1.flights << f1


print "Creating Users... "
User.destroy_all

u1 = User.create(
  name:"Sir Richard Branson",
  admin:true
)


print "Creating Reservations... "
Reservation.destroy_all

r1 = Reservation.create(
  flight_id:f1.id,
  user_id:u1.id,
  row:1,
  column:1
)

puts "created #{ Reservation.count } Reservations."

f1.reservations << r1

puts "created #{ User.count } Users."
u1.reservations << r1

puts "Testing associations:"
print "Bookings by #{ User.first.name }, Rows & Columns: "
puts User.first.reservations.pluck(:row,:column).join(', ')
