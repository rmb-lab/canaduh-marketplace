# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
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
  password:"belistest",
  user_type: "advisor"
)

#Users
rmb = User.create!(first_name:"Rose",
  last_name:"Marie",
  email:"rmb@test.com",
  password:"rmbtest",
  user_type: "user"
)

mickael = User.create!(first_name:"Mickael",
  last_name:"Merle",
  email:"mickael@test.com",
  password:"michaeltest",
  user_type: "user"
)

# SERVICES
Service.destroy_all

puts 'Creating "Services"...'

service1 = Service.create!(
  user: belis,
  service_type: "Ongoing Assistance",
  description: "I have 2 years of experience in..",
  price: "30"
)

service2 = Service.create!(
  user: belis,
  service_type: "Test Prep",
  description: "I have 2 years of experience in..",
  price: "30"
)

# APPOINTMENTS
Appointment.destroy_all

puts 'Creating "Appointments"...'

appointment1 = Appointment.create!(
  date: Faker::Date.in_date_period,
  status: ["pending confirmation", "confirmed", "cancelled"].sample,
  service: service1,
  user: rmb,
)

appointment2 = Appointment.create!(
  date: Faker::Date.in_date_period,
  status: ["pending confirmation", "confirmed", "cancelled"].sample,
  service: service2,
  user: mickael,
)

puts 'Finished!'
