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
  user_bio: "I can help with learning English for those who either immigrated to an English speaking country or have re-located there to study for academic purposes. Classes typically focus on the four main skills, reading, writing, speaking and listening, involving a high degree of participation from students who must use the language in order to become familiar with it.
  I have experience of teaching all ages and abilities, from children to adult learners, at junior and high school, private language school and at university. I have taught general English, business English, and exam prep, in the Middle East, Europe, the U.S.A and Asia.",
  imgUrl: Faker::Avatar.image,
  specialty: ["student visa"].sample,
  featured: true
)
peter = User.create!(
  first_name:"Peter",
  last_name:"Segura",
  email:"peter@test.com",
  password:"petertest",
  user_type: "advisor",
  username: "peters",
  location: "Toronto",
  user_bio: "I coach clients who are preparing for interviews. Some of these clients are unaccustomed to the interview process in their countries.
  By rehearsing their answers to align with what interviewers are looking for, offering feedback about body language, eye contact, smiles, etc. my clients feel more confident about the process and do better in the interview as a result.",
  imgUrl: Faker::Avatar.image,
  specialty: ["work visa"].sample,
  featured: true
)
justin = User.create!(
  first_name:"Justin",
  last_name:"Maureau",
  email:"justin@test.com",
  password:"justintest",
  user_type: "advisor",
  username: "justint",
  location: "Ottawa",
  user_bio: "I have been teaching for more than 11 years. As a result, I learned more about people and the importance motivations have on the ability to learn, retain and feel confident communicating and living in the culture of English speaking communities.
  I have experience with cultures and customs from little known provinces, as well as familiarity with the more prominent immigrant and refugee language learning communities.",
  imgUrl: Faker::Avatar.image,
  specialty: ["permanent residency"].sample,
  featured: false
)
celine = User.create!(
  first_name:"Celine",
  last_name:"Dion",
  email:"celine@test.com",
  password:"celinetest",
  user_type: "advisor",
  username: "celinet",
  location: "Montreal",
  user_bio: "I am a licensed attorney who attended law school at the Sorbonne University, Paris, and practiced in Belgium before moving to Montreal, where I have been practicing since 2003. I am also licensed to practice in the United Kingdom. I have experience in the French, Belgian, and Canadian legal systems.
  With a B.A. in French and a diploma in French Phonetics from University College, London, and a certification in teaching English as a Second Language, I lived and taught English as a Second Language in France for 15 years in the public school system, the University system, and professional training schools for judges and lawyers.",
  imgUrl: Faker::Avatar.image,
  specialty: ["canadian citizenship"].sample,
  featured: false
)
guy = User.create!(
  first_name:"Guy",
  last_name:"Lazarte",
  email:"guy@test.com",
  password:"guytest",
  user_type: "advisor",
  username: "guyl",
  location: "Montreal",
  user_bio: "I have a Bachelor’s Degree in Business from Humber College, a 120-hour TESOL certificate, an IELTS Specialist certificate and I am trained to teach the Canadian Citizenship test. I have taught English online to students (ages 5 to 12). I helped them learn English by speaking, reading and listening skills in a fun and engaging online learning platform. We worked on building their understanding of the English language using interactive games, TPR and fun characters.
  I currently tutor adults in a local ESL literacy program and online interactive platforms. I help them with reading, speaking, writing and listening skills through conversation, pronunciation, reading and skill-building exercises. We work on job readiness, study skills and interviewing skills. I also help them with test prep for the IELTS and TOEFL and practicing for the Canadian Citizenship test.",
  imgUrl: Faker::Avatar.image,
  specialty: ["canadian citizenship"].sample,
  featured: true
)
victor = User.create!(
  first_name:"Victor",
  last_name:"Bianchi",
  email:"victor@test.com",
  password:"victortest",
  user_type: "advisor",
  username: "victorb",
  location: "Calgary",
  user_bio: "I am a dedicated and earnest individual with a passion for helping others achieve their educational goals. I have a B.A. in English and have my Graduate TESOL Certification from Cleveland State University. I am currently getting my Masters in Early Childhood Education (Pre-K - 3) and together with my TESOL training, I have multiple strategies and methods for successful early childhood and ESL instruction.
  I enjoy working with all ages and backgrounds in both TESOL, ELA, USCIS, Reading, Writing, and Speaking . I have 2+ years of classroom experience teaching both children and adults.
  I believe that respect, patience, and open communication are key to successful teaching and learning. Establishing a strong relationship with the individuals I tutor sets me apart and allows me to create personalized lesson plans and activities to fit specific educational needs.",
  imgUrl: Faker::Avatar.image,
  specialty: ["student visa"].sample,
  featured: true
)
paul = User.create!(
  first_name:"Paul",
  last_name:"McCarthy",
  email:"paul@test.com",
  password:"paultest",
  user_type: "advisor",
  username: "pault",
  location: "Montreal",
  user_bio: "I tutor ESL Learners across a diverse range of age and work experience, such as, high school and college students, and business professionals. While working at P&G, I helped co-workers improve their English language skills and increase their confidence when speaking and listening to English.
  One colleague I tutored was preparing for the Canadian citizenship test and another was beginning a 6-month work assignment in my department. Both students’ native language was Japanese.
  I recommend specific strategies, such as, watching English speaking movies on television, at the movie theater, or through a streaming service to ESL Learners. I also recommend watching English speaking news and talk shows, and reading novels written in English language. Engaging in conversations using the English language can also increase the ESL Learner's ability to write and speak fluently.",
  imgUrl: Faker::Avatar.image,
  specialty: ["permanent residency", "canadian citizenship"].sample,
  featured: true
)
maria = User.create!(
  first_name:"Maria",
  last_name:"Carrey",
  email:"maria@test.com",
  password:"mariatest",
  user_type: "advisor",
  username: "mariac",
  location: "Vancouver",
  user_bio: "For the last 7 years I have been in private practice in a major law firm, practicing commercial and corporate law and Complex Civil Litigation. I am licensed in FL and New York. As to my education background I have graduated top of my Class from Temple University with a B.A. in Political Science and a specialization in Political Economy, and received a J.D. from Florida State University College of Law.
  I have been tutoring law students on various courses, including but not limited to: civil procedure, business law, Constitutional law, and legal writing, I also tutor undergraduate students with political science courses such as Canadian Government, Pre-law, business law, Canadian federalism, and constitutional law.",
  imgUrl: Faker::Avatar.image,
  specialty: ["student visa", "work visa", "permanent residency", "canadian citizenship"].sample,
  featured: true
)
travis = User.create!(
  first_name:"Travis",
  last_name:"Scott",
  email:"travis@test.com",
  password:"travistest",
  user_type: "advisor",
  username: "traviss",
  location: "Toronto",
  user_bio: "I'm a college student (legal major) who loves to teach others. I’m a native Spanish speaker, two times winner of the Real Academia Española National Championship in Cuba. I will be more than happy to become a Spanish Tutor for those in need of learning the beautiful language of Castellano (Español).
  I have full experience in tutoring Español, and its grammar. Back in my country of birth, Cuba, I was one of the top students in Spanish Literature, and Spanish Grammar. I had participated in several competitions while attending high school in Santiago de Cuba, winning first place, and second place respectively. I was one of the ten students elected to be part of the national championship in 2008 to compete with other regions of the country (Cuba).",
  imgUrl: Faker::Avatar.image,
  specialty: ["student visa", "work visa", "permanent residency", "canadian citizenship"].sample,
  featured: false
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
  user_bio: Faker::Quote.matz,
  imgUrl: Faker::Avatar.image
)
mickael = User.create!(
  first_name:"Mickael",
  last_name:"Merle",
  email:"mickael@test.com",
  password:"mickaeltest",
  user_type: "user",
  username: "mickaelm",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  imgUrl: Faker::Avatar.image
)
lou = User.create!(
  first_name:"Lou",
  last_name:"Reed",
  email:"lou@test.com",
  password:"loutest",
  user_type: "user",
  username: "loulou",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  imgUrl: Faker::Avatar.image
)
patrick = User.create!(
  first_name:"Patrick",
  last_name:"Bourget",
  email:"patrick@test.com",
  password:"patricktest",
  user_type: "user",
  username: "patrickb",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  imgUrl: Faker::Avatar.image
)
diana = User.create!(
  first_name:"Diana",
  last_name:"Ross",
  email:"diana@test.com",
  password:"dianatest",
  user_type: "user",
  username: "dianaqueen",
  location: "Montreal",
  user_bio: Faker::Quote.matz,
  imgUrl: Faker::Avatar.image
)

# SERVICES
Service.destroy_all
puts 'Creating "Services"...'

service1 = Service.create!(
  user: belis,
  service_type: "Ongoing Assistance",
  description: "Assistance from start to finish in helping you prepare documentation for your Canadian student visa application process. Pre-planned and scheduled follow-up appointments give you the checkpoints along the way to ensure you are confident and stress free. This service guarantees a tailor fit solution to your immigration needs.",
  path: "Student Visa",
  price: "499"
)
service2 = Service.create!(
  user: travis,
  service_type: "Test Prep",
  description: "Professional tutoring to help prepare for your permanent residency exams. Cover the Canadian value chart, written and spoken language test prep. This service includes 3hrs of one on one sessions booked at your convenience.",
  path: "Permanent Residency",
  price: "99"
)
service3 = Service.create!(
  user: paul,
  service_type: "General Consultation",
  description: "Get professional advice and council from a certified immigration advisor to put you on the right path to citizenship. The service includes a personalized assesement and a tailored solution. Consultations can be conducted in person or remotely if a physical meeting is not possible. Appointments last 1 hour and a detailed citizenship plan is delivered to you digitaly within 5 business days.",
  path: "Canadian Citizenship",
  price: "129"
)
service4 = Service.create!(
  user: maria,
  service_type: "Test Prep",
  path: "Work Visa",
  description: "Professional tutoring to help prepare for your work permit process. Cover the Canadian value chart, written and spoken language test prep and job interview coaching. This service includes 3hrs of one on one sessions booked at your convenience.",
  price: "149"
)
service5 = Service.create!(
  user: justin,
  service_type: "General Consultation",
  path: "Canadian Citizenship",
  description: "Get professional advice and council from a certified immigration advisor to put you on the right path to citizenship. The service includes a personalized assesement and a tailored solution. Consultations can be conducted in person or remotely if a physical meeting is not possible. Appointments last 1 hour and a detailed citizenship plan is delivered to you digitaly within 5 business days.",
  price: "99"
)
service6 = Service.create!(
  user: victor,
  service_type: "Ongoing Assistance",
  description: "Assistance from start to finish in helping you prepare documentation for your Canadian student visa application process. Pre-planned and scheduled follow-up appointments give you the checkpoints along the way to ensure you are confident and stress free. This service guarantees a tailor fit solution to your immigration needs.",
  path: "Student Visa",
  price: "799"
)
service7 = Service.create!(
  user: celine,
  service_type: "Test Prep",
  path: "Work Visa",
  description: "Professional tutoring to help prepare for your work permit process. Cover the Canadian value chart, written and spoken language test prep and job interview coaching. This service includes 3hrs of one on one sessions booked at your convenience.",
  price: "149"
)
service8 = Service.create!(
  user: guy,
  service_type: "General Consultation",
  path: "Canadian Citizenship",
  description: "Get professional advice and council from a certified immigration advisor to put you on the right path to citizenship. The service includes a personalized assesement and a tailored solution. Consultations can be conducted in person or remotely if a physical meeting is not possible. Appointments last 1 hour and a detailed citizenship plan is delivered to you digitaly within 5 business days.",
  price: "99"
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
