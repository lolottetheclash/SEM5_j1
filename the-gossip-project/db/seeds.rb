# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do
city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

10.times do
user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::HarryPotter.book, email: Faker::Internet.email, age: Faker::Types.rb_integer, city_id: City.all.sample.id)
end

20.times do
gossip = Gossip.create!(title: Faker::Beer.name, content: Faker::Beer.malts, user_id: User.all.sample.id)
end

10.times do
tag = Tag.create!(title: Faker::Cat.name)#, gossip_id:Gossip.all.sample.id)#, user_id:User.all.sample.id)
end

20.times do
gossiptag = Gossiptag.create!(gossip_id: Gossip.all.sample.id, tag_id: Tag.all.sample.id)
end

30.times do
pm = Pm.create!(content: Faker::Cat.registry, recipient_id: User.all.sample.id, sender_id: User.all.sample.id)
end

