# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 100.times do
#   email = Faker::Internet.email
#   fname = Faker::Name
#   lname = Faker::Name
#   User.create!(email: email, fname: fname, lname: lname, notice_seen: true, password: "123456", password_confirmation: "123456")
# end

100.times do
  user_id = 2
  content = Faker::Quotes::Shakespeare.hamlet_quote
  Post.update(content: content, user_id: user_id, imageURL: "https://image.shutterstock.com/image-photo/bright-spring-view-cameo-island-260nw-1048185397.jpg")
end
