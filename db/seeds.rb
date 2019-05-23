# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Deleting the DB..."

Restaurant.destroy_all

puts "Seeding the DB..."

5.times do
  Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: %w(chinese italian japanese french belgian).sample
  ).save!
end

puts "Done!"
