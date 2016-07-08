require 'faker'

5.times do
  User.create!(

    username: Faker::Name.name,
    email: Faker::Internet.email,
    password: Faker::Internet.password
 )
end
users = User.all

50.times do
  item = Item.create!(
    user: users.sample,
    name: Faker::Hipster.sentence(3),
    time_remaining: 7
 )
end
items = Item.all

 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Item.count} items created"
