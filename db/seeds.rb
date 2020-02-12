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

