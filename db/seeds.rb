# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ first_name: 'Mickael'}, {last_name: 'Merle'}, {email: 'mickael@gmail.com'}])
users = User.create([{ first_name: 'Rose Marie'}, {last_name: 'Be Trong'}, {email: 'rosemarie@gmail.com'}])
users = User.create([{ first_name: 'Patrick'}, {last_name: 'Bourget'}, {email: 'patrick@gmail.com'}])
users = User.create([{ first_name: 'Belis'}, {last_name: 'Turegon'}, {email: 'belis@gmail.com'}])

require 'faker'
puts 'Cleaning database...'
# USERS
User.destroy_all
puts 'Creating "Users"...'
#Advisor
belis = User.create!(
  first_name:"Belis",
  last_name:"Turegun",
  email:"belis@test.com",
  password:"belistest"
)
#User
rmb = User.create!(first_name:"Rose",
  last_name:"Marie",
  email:"rmb@test.com",
  password:"rmbtest"
)
# SERVICES
Service.destroy_all
puts 'Creating "Services"...'
service1 = Service.create!(
  user: belis,
  service_type: "Ongoing Assistance",
  description: "I have 2 years of experience in..",
  price:"$30"
)
service2 = Service.create!(
  user: belis,
  service_type: "Test Prep",
  description: "I have 2 years of experience in..",
  price:"$30")
# APPOINTMENTS
Appointment.destroy_all
puts 'Creating "Appointments"...'
Appointment.create!(
  date: Faker::Date.in_date_period,
  status: ["pending confirmation", "confirmed", "cancelled"].sample,
  service: service1,
  user: belis
)
puts 'Finished!'
