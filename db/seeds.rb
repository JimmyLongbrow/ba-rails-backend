# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
print "Creating Airplanes... "
Airplane.destroy_all

a1 = Airplane.create(name:"747",row:24,column:4)
a2 = Airplane.create(name:"757",row:24,column:4)
a3 = Airplane.create(name:"777",row:24,column:4)
a4 = Airplane.create(name:"787",row:24,column:4)
a5 = Airplane.create(name:"799",row:24,column:4)


puts "created #{ Airplane.count } Airplanes."

print "Creating Flights... "
Flight.destroy_all

f1 = Flight.create(
  date:"28/Aug/2020",
  flight_number:747,
  origin:"Sydney",
  destination:"Melbourne"
)

f2 = Flight.create(
  date:"20/Jan/2021",
  flight_number:757,
  origin:"Dubai",
  destination:"Brisbane"
)

f3 = Flight.create(
  date:"18/Feb/2021",
  flight_number:777,
  origin:"Bali",
  destination:"Jakarta"
)

f4 = Flight.create(
  date:"23/Dec/2020",
  flight_number:787,
  origin:"Tokyo",
  destination:"Melbourne"
)

f5 = Flight.create(
  date:"25/Nov/2020",
  flight_number:799,
  origin:"Glasgow",
  destination:"London"
)

a1.flights << f1
a2.flights << f2
a3.flights << f3
a4.flights << f4
a5.flights << f5

puts "created #{ Flight.count } Flights."

print "Creating Users... "
User.destroy_all

u1 = User.create(name:"Sir Richard Branson", admin:true)
u2 = User.create(name:"Nemo Petrovic", admin:true)
u3 = User.create(name:"Danny Lai")
u4 = User.create(name:"Karthik Sekar")
u5 = User.create(name:"Luke Hammer")

puts "created #{ User.count } Users."


print "Creating Reservations... "
Reservation.destroy_all

r1 = Reservation.create(row:1,column:1)
r2 = Reservation.create(row:2,column:2)
r3 = Reservation.create(row:3,column:3)
r4 = Reservation.create(row:4,column:4)
r5 = Reservation.create(row:5,column:4)


f1.reservations << r1
f2.reservations << r2
f3.reservations << r3
f4.reservations << r4
f5.reservations << r5

u1.reservations << r1
u2.reservations << r2
u3.reservations << r3
u4.reservations << r4
u5.reservations << r5

puts "created #{ Reservation.count } Reservations."



puts "Testing associations:"
print "Bookings by #{ User.first.name }, Rows & Columns: "
puts User.first.reservations.pluck(:row,:column).join(', ')

puts "Testing associations:"
print "Bookings by #{ User.last.name }, Rows & Columns: "
puts User.last.reservations.pluck(:row,:column).join(', ')
