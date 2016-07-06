=begin

require 'random_data'

5.times do
  User.create!(

    name: RandomData.random_name,
    email: RandomData.random_email,
    password: RandomData.random_sentence
 )
end
users = User.all

50.times do
  item = Item.create!(
    user: users.sample,
    name: RandomData.random_sentence,
 )

items = Item.all

 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Item.count} items created"

=end
