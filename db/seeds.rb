# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: 'Matt', email: 'matt@gmail.com', password: 'foobar123', password_confirmation: 'foobar123')
User.create!(name: 'Rodolpho', email: 'rodolpho@gmail.com', password: 'testing3523', password_confirmation: 'testing3523')
