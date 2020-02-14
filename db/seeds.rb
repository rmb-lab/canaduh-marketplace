# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# belis = User.create!(first_name:"Belis", last_name:"Turegun", email:"belis@test.com", password:"belistest")
# Service.create!(user: belis, service_type: "Ongoing Assistance", description: "I have 2 years of experience in..", price:"$30")
# Service.create!(user: belis, service_type: "Test Prep", description: "I have 2 years of experience in..", price:"$30")

require 'faker'
puts 'Cleaning database...'

# USERS
User.destroy_all
puts 'Creating "Users"...'

#Advisors
belis = User.create!(
  first_name:"Belis",
  last_name:"Turegun",
  email:"belis@test.com",
  password:"belistest",
  user_type: "advisor"
)
peter = User.create!(
  first_name:"Peter",
  last_name:"Table",
  email:"peter@test.com",
  password:"petertest",
  user_type: "advisor"
)

#Users
rmb = User.create!(
  first_name:"Rose",
  last_name:"Marie",
  email:"rmb@test.com",
  password:"rmbtest",
  user_type: "user"
)
mickael = User.create!(
  first_name:"Mickael",
  last_name:"Merle",
  email:"mickael@test.com",
  password:"michaeltest",
  user_type: "user"
)
lou = User.create!(
  first_name:"Lou",
  last_name:"Reed",
  email:"lou@test.com",
  password:"loutest",
  user_type: "user"
)
patrick = User.create!(
  first_name:"Patrick",
  last_name:"Bourget",
  email:"patrick@test.com",
  password:"patricktest",
  user_type: "user"
)
diana = User.create!(
  first_name:"Diana",
  last_name:"Ross",
  email:"diana@test.com",
  password:"dianatest",
  user_type: "user"
)

# SERVICES
Service.destroy_all
puts 'Creating "Services"...'

service1 = Service.create!(
  user: belis,
  service_type: "Ongoing Assistance",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nibh urna, viverra eu risus sit amet, suscipit luctus metus. Maecenas facilisis mauris non dui semper sodales. Proin a dolor elementum ligula pulvinar efficitur nec eget est. Mauris convallis ultricies justo a pellentesque. Aliquam vitae ultrices nisi, id faucibus sem. Vivamus vitae dignissim diam. Sed in dictum felis. Morbi sit amet.",
  price: "60"
)
service2 = Service.create!(
  user: belis,
  service_type: "Test Prep",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nibh urna, viverra eu risus sit amet, suscipit luctus metus. Maecenas facilisis mauris non dui semper sodales. Proin a dolor elementum ligula pulvinar efficitur nec eget est. Mauris convallis ultricies justo a pellentesque. Aliquam vitae ultrices nisi, id faucibus sem. Vivamus vitae dignissim diam. Sed in dictum felis. Morbi sit amet.",
  price: "30"
)
service3 = Service.create!(
  user: belis,
  service_type: "General Consultation",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nibh urna, viverra eu risus sit amet, suscipit luctus metus. Maecenas facilisis mauris non dui semper sodales. Proin a dolor elementum ligula pulvinar efficitur nec eget est. Mauris convallis ultricies justo a pellentesque. Aliquam vitae ultrices nisi, id faucibus sem. Vivamus vitae dignissim diam. Sed in dictum felis. Morbi sit amet.",
  price: "20"
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
appointment3 = Appointment.create!(
  date: Faker::Date.in_date_period,
  status: ["pending confirmation", "confirmed", "cancelled"].sample,
  service: service3,
  user: lou,
)
appointment4 = Appointment.create!(
  date: Faker::Date.in_date_period,
  status: ["pending confirmation", "confirmed", "cancelled"].sample,
  service: service3,
  user: patrick,
)

puts 'Finished!'
