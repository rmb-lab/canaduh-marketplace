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
  user_type: "advisor",
  username: "belist",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  specialty: ["student visa", "work visa", "permanent residency", "canadian citizenship"].sample,
  featured: false
)
peter = User.create!(
  first_name:"Peter",
  last_name:"Table",
  email:"peter@test.com",
  password:"petertest",
  user_type: "advisor",
  username: "petert",
  location: "Toronto",
  user_bio: Faker::Quote.matz,
  specialty: ["student visa", "work visa", "permanent residency", "canadian citizenship"].sample,
  featured: true
)
justin = User.create!(
  first_name:"Justin",
  last_name:"Trudeau",
  email:"justin@test.com",
  password:"justintest",
  user_type: "advisor",
  username: "justint",
  location: "Ottawa",
  user_bio: Faker::Quote.matz,
  specialty: ["student visa", "work visa", "permanent residency", "canadian citizenship"].sample
)
celine = User.create!(
  first_name:"Celine",
  last_name:"Dion",
  email:"celine@test.com",
  password:"celinetest",
  user_type: "advisor",
  username: "celinet",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  specialty: ["student visa", "work visa", "permanent residency", "canadian citizenship"].sample
)
guy = User.create!(
  first_name:"Guy",
  last_name:"Laliberte",
  email:"guy@test.com",
  password:"guytest",
  user_type: "advisor",
  username: "guyl",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  specialty: ["student visa", "work visa", "permanent residency", "canadian citizenship"].sample
)
mg = User.create!(
  first_name:"Marie",
  last_name:"Gabrielle",
  email:"mg@test.com",
  password:"mgtest",
  user_type: "advisor",
  username: "mg",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  specialty: ["student visa", "work visa", "permanent residency", "canadian citizenship"].sample
)
victor = User.create!(
  first_name:"Victor",
  last_name:"Bianchi",
  email:"victor@test.com",
  password:"victortest",
  user_type: "advisor",
  username: "victorb",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  specialty: ["student visa", "work visa", "permanent residency", "canadian citizenship"].sample
)
paul = User.create!(
  first_name:"Paul",
  last_name:"McCartney",
  email:"paul@test.com",
  password:"paultest",
  user_type: "advisor",
  username: "pault",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  specialty: ["student visa", "work visa", "permanent residency", "canadian citizenship"].sample
)
maria = User.create!(
  first_name:"Maria",
  last_name:"Carrey",
  email:"maria@test.com",
  password:"mariatest",
  user_type: "advisor",
  username: "mariac",
  location: "Vancouver",
  user_bio: Faker::Quote.matz,
  specialty: ["student visa", "work visa", "permanent residency", "canadian citizenship"].sample
)
travis = User.create!(
  first_name:"Travis",
  last_name:"Scott",
  email:"travis@test.com",
  password:"travistest",
  user_type: "advisor",
  username: "traviss",
  location: "Toronto",
  user_bio: Faker::Quote.matz,
  specialty: ["student visa", "work visa", "permanent residency", "canadian citizenship"].sample
)

#Users
rmb = User.create!(
  first_name:"Rose",
  last_name:"Marie",
  email:"rmb@test.com",
  password:"rmbtest",
  user_type: "user",
  username: "rmb",
  location: "Montreal",
  user_bio: Faker::Quote.matz
)
mickael = User.create!(
  first_name:"Mickael",
  last_name:"Merle",
  email:"mickael@test.com",
  password:"mickaeltest",
  user_type: "user",
  username: "mickaelm",
  location: "Montreal",
  user_bio: Faker::Quote.matz
)
lou = User.create!(
  first_name:"Lou",
  last_name:"Reed",
  email:"lou@test.com",
  password:"loutest",
  user_type: "user",
  username: "loulou",
  location: "Montreal",
  user_bio: Faker::Quote.matz
)
patrick = User.create!(
  first_name:"Patrick",
  last_name:"Bourget",
  email:"patrick@test.com",
  password:"patricktest",
  user_type: "user",
  username: "patrickb",
  location: "Montreal",
  user_bio: Faker::Quote.matz
)
diana = User.create!(
  first_name:"Diana",
  last_name:"Ross",
  email:"diana@test.com",
  password:"dianatest",
  user_type: "user",
  username: "dianaqueen",
  location: "Montreal",
  user_bio: Faker::Quote.matz
)

# SERVICES
Service.destroy_all
puts 'Creating "Services"...'

service1 = Service.create!(
  user: belis,
  service_type: "Ongoing Assistance",
  path: "Student Visa",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nibh urna, viverra eu risus sit amet, suscipit luctus metus. Maecenas facilisis mauris non dui semper sodales. Proin a dolor elementum ligula pulvinar efficitur nec eget est. Mauris convallis ultricies justo a pellentesque. Aliquam vitae ultrices nisi, id faucibus sem. Vivamus vitae dignissim diam. Sed in dictum felis. Morbi sit amet.",
  price: "60"
)
service2 = Service.create!(
  user: belis,
  service_type: "Test Prep",
  path: "Work Visa",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nibh urna, viverra eu risus sit amet, suscipit luctus metus. Maecenas facilisis mauris non dui semper sodales. Proin a dolor elementum ligula pulvinar efficitur nec eget est. Mauris convallis ultricies justo a pellentesque. Aliquam vitae ultrices nisi, id faucibus sem. Vivamus vitae dignissim diam. Sed in dictum felis. Morbi sit amet.",
  price: "30"
)
service3 = Service.create!(
  user: belis,
  service_type: "General Consultation",
  path: "Canadian Citizenship",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nibh urna, viverra eu risus sit amet, suscipit luctus metus. Maecenas facilisis mauris non dui semper sodales. Proin a dolor elementum ligula pulvinar efficitur nec eget est. Mauris convallis ultricies justo a pellentesque. Aliquam vitae ultrices nisi, id faucibus sem. Vivamus vitae dignissim diam. Sed in dictum felis. Morbi sit amet.",
  price: "20"
)
service4 = Service.create!(
  user: peter,
  service_type: "Test Prep",
  path: "Work Visa",
  description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nibh urna, viverra eu risus sit amet, suscipit luctus metus. Maecenas facilisis mauris non dui semper sodales. Proin a dolor elementum ligula pulvinar efficitur nec eget est. Mauris convallis ultricies justo a pellentesque. Aliquam vitae ultrices nisi, id faucibus sem. Vivamus vitae dignissim diam. Sed in dictum felis. Morbi sit amet.",
  price: "30"
)
service5 = Service.create!(
  user: peter,
  service_type: "General Consultation",
  path: "Canadian Citizenship",
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
