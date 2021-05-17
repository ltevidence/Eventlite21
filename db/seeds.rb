# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
nb_users = 10
nb_event = 

nb_users.times do |x|
  User.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Name.first_name+"@yopmail.com", description: Faker::Lorem.sentences(number: 2))
puts "Seeding User nb#{x}"
end


