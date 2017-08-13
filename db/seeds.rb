# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



99.times do |n|
  password = Faker::Internet.password
  adminvalue = false
  if n%20 == 0 then
    password = 'Nuclear01'
    adminvalue = true
  end
  User.create!(name:  Faker::Name.name, 
    email: Faker::Internet.email,
    activated: true,
    activated_at:Time.zone.now,
    password: password,
    password_confirmation: password,
    admin: adminvalue)


end

