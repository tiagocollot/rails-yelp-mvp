# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = ["chinese", "italian", "japanese", "french", "belgian"]
puts "Cleaning whatever"
Restaurant.destroy_all
puts "Creating restaurants and reviews"


10.times do

 restaurant = Restaurant.create(name: Faker::Restaurant.name, phone_number: Faker::PhoneNumber.cell_phone_in_e164 , address: Faker::Games::Pokemon.location, category: categories.sample )
  Review.create(content:Faker::Cannabis.cannabinoid , rating: rand(0..5), restaurant: restaurant)
end

puts "Life is Wooooondeeeeerfuuuuul!!!!"
