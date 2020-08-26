# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Airplane.create(
  name:"747",
  row:24,
  column:4
)

Flight.create(
  date:"28/Aug/2020",
  flight_number:747,
  origin:"Sydney",
  destination:"Melbourne",
  airplane_id:3
)
