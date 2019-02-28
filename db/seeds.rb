puts "Cleaning Data Base"

# this isnt working because booking and sessions are a many to many relationship
# is there a way to destroy all at the same time?
# UserSport.destroy_all
# Sport.destroy_all


puts "Creating Athletes..."


  athlete = User.new(
    first_name: Faker::Football.player.split[0],
    last_name: Faker::Football.player.split[1] || "Smith",
    email: Faker::Internet.email,
    coach: false,
    password: Faker::Internet.password(8),
    address: "Hoxton, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1480179087180-d9f0ec044897?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=658&q=80',
    bio: "I love to train super hard. I am passionate about sport!!!⚽️🏆"
  )
  athlete.save!

  athlete = User.new(
    first_name: Faker::Football.player.split[0],
    last_name: Faker::Football.player.split[1] || "Smith",
    email: Faker::Internet.email,
    coach: false,
    password: Faker::Internet.password(8),
    address: "Shorditch, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1480179087180-d9f0ec044897?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=658&q=80',
    bio: "I love to train super hard. I am passionate about sport!!!⚽️🏆"
  )
  athlete.save!

  athlete = User.new(
    first_name: Faker::Football.player.split[0],
    last_name: Faker::Football.player.split[1] || "Smith",
    email: Faker::Internet.email,
    coach: false,
    password: Faker::Internet.password(8),
    address: "Bethnal Green, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1480179087180-d9f0ec044897?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=658&q=80',
    bio: "I love to train super hard. I am passionate about sport!!!⚽️🏆"
  )
  athlete.save!

  athlete = User.new(
    first_name: Faker::Football.player.split[0],
    last_name: Faker::Football.player.split[1] || "Smith",
    email: Faker::Internet.email,
    coach: false,
    password: Faker::Internet.password(8),
    address: "Wimbledon, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1480179087180-d9f0ec044897?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=658&q=80',
    bio: "I love to train super hard. I am passionate about sport!!!⚽️🏆"
  )
  athlete.save!

  athlete = User.new(
    first_name: Faker::Football.player.split[0],
    last_name: Faker::Football.player.split[1] || "Smith",
    email: Faker::Internet.email,
    coach: false,
    password: Faker::Internet.password(8),
    address: "Islington, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1480179087180-d9f0ec044897?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=658&q=80',
    bio: "I love to train super hard. I am passionate about sport!!!⚽️🏆"
  )
  athlete.save!

  athlete = User.new(
    first_name: Faker::Football.player.split[0],
    last_name: Faker::Football.player.split[1] || "Smith",
    email: Faker::Internet.email,
    coach: false,
    password: Faker::Internet.password(8),
    address: "Finsbury Park, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1480179087180-d9f0ec044897?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=658&q=80',
    bio: "I love to train super hard. I am passionate about sport!!!⚽️🏆"
  )
  athlete.save!


puts "Creating Coches..."


  coach = User.new(
    first_name: Faker::Football.coach.split[0],
    last_name: Faker::Football.coach.split[1] || "Jackson",
    email: Faker::Internet.email,
    coach: true,
    password: Faker::Internet.password(8),
    address: "Hoxton, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1508802654646-fb6b7f78027d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    bio: "I love to coach. I am passionate about sport!!! I am a tyrant so watch out 🏋🏻‍♀️"
  )
  coach.save!

  coach = User.new(
    first_name: Faker::Football.coach.split[0],
    last_name: Faker::Football.coach.split[1] || "Jackson",
    email: Faker::Internet.email,
    coach: true,
    password: Faker::Internet.password(8),
    address: "Wimbledon, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1508802654646-fb6b7f78027d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    bio: "I love to coach. I am passionate about sport!!! I am a tyrant so watch out 🏋🏻‍♀️"
  )
  coach.save!

  coach = User.new(
    first_name: Faker::Football.coach.split[0],
    last_name: Faker::Football.coach.split[1] || "Jackson",
    email: Faker::Internet.email,
    coach: true,
    password: Faker::Internet.password(8),
    address: "Shoreditch, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1508802654646-fb6b7f78027d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    bio: "I love to coach. I am passionate about sport!!! I am a tyrant so watch out 🏋🏻‍♀️"
  )
  coach.save!

  coach = User.new(
    first_name: Faker::Football.coach.split[0],
    last_name: Faker::Football.coach.split[1] || "Jackson",
    email: Faker::Internet.email,
    coach: true,
    password: Faker::Internet.password(8),
    address: "Highbury, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1508802654646-fb6b7f78027d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    bio: "I love to coach. I am passionate about sport!!! I am a tyrant so watch out 🏋🏻‍♀️"
  )
  coach.save!

  coach = User.new(
    first_name: Faker::Football.coach.split[0],
    last_name: Faker::Football.coach.split[1] || "Jackson",
    email: Faker::Internet.email,
    coach: true,
    password: Faker::Internet.password(8),
    address: "Twickenham, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1508802654646-fb6b7f78027d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    bio: "I love to coach. I am passionate about sport!!! I am a tyrant so watch out 🏋🏻‍♀️"
  )
  coach.save!

  coach = User.new(
    first_name: Faker::Football.coach.split[0],
    last_name: Faker::Football.coach.split[1] || "Jackson",
    email: Faker::Internet.email,
    coach: true,
    password: Faker::Internet.password(8),
    address: "Peckham Rye, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1508802654646-fb6b7f78027d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    bio: "I love to coach. I am passionate about sport!!! I am a tyrant so watch out 🏋🏻‍♀️"
  )
  coach.save!

  coach = User.new(
    first_name: Faker::Football.coach.split[0],
    last_name: Faker::Football.coach.split[1] || "Jackson",
    email: Faker::Internet.email,
    coach: true,
    password: Faker::Internet.password(8),
    address: "Canada Water, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1508802654646-fb6b7f78027d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    bio: "I love to coach. I am passionate about sport!!! I am a tyrant so watch out 🏋🏻‍♀️"
  )
  coach.save!

  coach = User.new(
    first_name: Faker::Football.coach.split[0],
    last_name: Faker::Football.coach.split[1] || "Jackson",
    email: Faker::Internet.email,
    coach: true,
    password: Faker::Internet.password(8),
    address: "Vaxhall, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1508802654646-fb6b7f78027d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    bio: "I love to coach. I am passionate about sport!!! I am a tyrant so watch out 🏋🏻‍♀️"
  )
  coach.save!

  coach = User.new(
    first_name: Faker::Football.coach.split[0],
    last_name: Faker::Football.coach.split[1] || "Jackson",
    email: Faker::Internet.email,
    coach: true,
    password: Faker::Internet.password(8),
    address: "Stratford, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1508802654646-fb6b7f78027d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    bio: "I love to coach. I am passionate about sport!!! I am a tyrant so watch out 🏋🏻‍♀️"
  )
  coach.save!

  coach = User.new(
    first_name: Faker::Football.coach.split[0],
    last_name: Faker::Football.coach.split[1] || "Jackson",
    email: Faker::Internet.email,
    coach: true,
    password: Faker::Internet.password(8),
    address: "Hyde Park, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1508802654646-fb6b7f78027d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    bio: "I love to coach. I am passionate about sport!!! I am a tyrant so watch out 🏋🏻‍♀️"
  )
  coach.save!

  coach = User.new(
    first_name: Faker::Football.coach.split[0],
    last_name: Faker::Football.coach.split[1] || "Jackson",
    email: Faker::Internet.email,
    coach: true,
    password: Faker::Internet.password(8),
    address: "Regents Park, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1508802654646-fb6b7f78027d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    bio: "I love to coach. I am passionate about sport!!! I am a tyrant so watch out 🏋🏻‍♀️"
  )
  coach.save!

  coach = User.new(
    first_name: Faker::Football.coach.split[0],
    last_name: Faker::Football.coach.split[1] || "Jackson",
    email: Faker::Internet.email,
    coach: true,
    password: Faker::Internet.password(8),
    address: "Wembley, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1508802654646-fb6b7f78027d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    bio: "I love to coach. I am passionate about sport!!! I am a tyrant so watch out 🏋🏻‍♀️"
  )
  coach.save!

  coach = User.new(
    first_name: Faker::Football.coach.split[0],
    last_name: Faker::Football.coach.split[1] || "Jackson",
    email: Faker::Internet.email,
    coach: true,
    password: Faker::Internet.password(8),
    address: "West Hampstead, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1508802654646-fb6b7f78027d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    bio: "I love to coach. I am passionate about sport!!! I am a tyrant so watch out 🏋🏻‍♀️"
  )
  coach.save!

  coach = User.new(
    first_name: Faker::Football.coach.split[0],
    last_name: Faker::Football.coach.split[1] || "Jackson",
    email: Faker::Internet.email,
    coach: true,
    password: Faker::Internet.password(8),
    address: "Greenwich, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1508802654646-fb6b7f78027d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    bio: "I love to coach. I am passionate about sport!!! I am a tyrant so watch out 🏋🏻‍♀️"
  )
  coach.save!

  coach = User.new(
    first_name: Faker::Football.coach.split[0],
    last_name: Faker::Football.coach.split[1] || "Jackson",
    email: Faker::Internet.email,
    coach: true,
    password: Faker::Internet.password(8),
    address: "Battersea Park, London",
    remote_user_image_url: 'https://images.unsplash.com/photo-1508802654646-fb6b7f78027d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80',
    bio: "I love to coach. I am passionate about sport!!! I am a tyrant so watch out 🏋🏻‍♀️"
  )
  coach.save!





puts "Adding your sports..."

Sport.create(name: "Swimming")
Sport.create(name: "Running")
Sport.create(name: "HIT")
Sport.create(name: "Weights")
Sport.create(name: "Yoga")

puts "Finshed ✅"

