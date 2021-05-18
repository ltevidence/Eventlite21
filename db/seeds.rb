# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
nb_users = 20
nb_event = 10
users = []
events = []

nb_event.times do |x|
  event = Event.create(title: Faker::Book.title,description: Faker::Lorem.sentences(number: 2),start_date: Faker::Date.between(from: '2021-05-23', to: '2021-09-25'),duration: rand(1..120),location: Faker::Address.city,user_id: users[rand(108..164).id])
  events << event
  puts "Seeding Event nb#{x +1}"
end 

