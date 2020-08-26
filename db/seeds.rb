# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airplane.create(
  id:1,
  name:"Virgin Airlines",
  row:[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24],
  column:[1,2,3,4]
)

Flight.create(
  id:1,
  date:"28/Aug/2020",
  flight_number:757,
  origin:"Sydney",
  destination:"Melbourne",
  airplane_id:1
)
