puts "Cleaning Data Base"

# this isnt working because booking and sessions are a many to many relationship
# is there a way to destroy all at the same time?
# UserSport.destroy_all
# Sport.destroy_all


puts "Creating Athletes..."

10.times do
  athlete = User.new(
    first_name: Faker::Football.player.split[0],
    last_name: Faker::Football.player.split[1],
    email: Faker::Internet.email,
    coach: false,
    password: Faker::Internet.password(8),
    address: Faker::WorldCup.city,
    remote_user_image_url: 'https://images.unsplash.com/photo-1480179087180-d9f0ec044897?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=658&q=80',
    bio: "I love to train super hard. I am passionate about sport!!!⚽️🏆"
  )
  athlete.save!
end

puts "Creating Coches..."

10.times do
  coach = User.new(
    first_name: Faker::Football.coach.split[0],
    last_name: Faker::Football.coach.split[1],
    email: Faker::Internet.email,
    coach: true,
    password: Faker::Internet.password(8),
    address: Faker::WorldCup.city,
    remote_user_image_url: 'https://images.unsplash.com/photo-1508802654646-fb6b7f78027d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    bio: "I love to coach. I am passionate about sport!!! I am a tyrant so watch out 🏋🏻‍♀️"
  )
  coach.save!
end

puts "Adding your sports..."

Sport.create(name: "Swimming")
Sport.create(name: "Running")
Sport.create(name: "HIT")
Sport.create(name: "Weights")
Sport.create(name: "Yoga")

puts "Finshed ✅"

