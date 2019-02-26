# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning Data Base"

# this isnt working because booking and sessions are a many to many relationship
# is there a way to destroy all at the same time?
Booking.destroy_all
Session.destroy_all
Review.destroy_all
User.destroy_all

puts "Creating Athletes..."

10.times do
  athlete = User.new(
    first_name: Faker::Football.player.split[0],
    second_name: Faker::Football.player.split[1],
    email: Faker::Internet.email,
    coach: false,
    password: Faker::Internet.password(8),
    location: Faker::WorldCup.city,
    bio: "I love to train super hard. I am passionate about sport!!!⚽️🏆"
  )
  athlete.save!
end

puts "Creating Coches..."

10.times do
  coach = User.new(
    first_name: Faker::Football.coach.split[0],
    second_name: Faker::Football.coach.split[1],
    email: Faker::Internet.email,
    coach: true,
    password: Faker::Internet.password(8),
    location: Faker::WorldCup.city,
    bio: "I love to coach. I am passionate about sport!!! I am a tyrant so watch out 🏋🏻‍♀️"
  )
  coach.save!
end

puts "Finshed ✅"

