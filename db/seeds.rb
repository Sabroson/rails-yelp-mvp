# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

counter = 1
category = Restaurant::RESTAURANT_CATEGORIES
5.times do
  rest = Restaurant.new
  rest.name = "restaurant-#{counter}"
  rest.address = "address-#{counter}"
  rest.phone_number = "phone-#{counter}"
  rest.category = category.sample
  rest.save
  counter += 1
end
