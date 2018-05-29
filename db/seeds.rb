# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: 'Matt', email: 'matt@gmail.com', password: 'foobar123', password_confirmation: 'foobar123')
User.create!(name: 'Rodolpho', email: 'rodolpho@gmail.com', password: 'testing3523', password_confirmation: 'testing3523')
User.create!(name: 'Tester Guy', email: 'tester@email.com', password: 'testerguy123', password_confirmation: 'testerguy123')
User.create!(name: 'Tester', email: 'tester123@email.com', password: 'tester123', password_confirmation: 'tester123')
User.create!(name: 'Guy', email: 'guy@email.com', password: 'guy123', password_confirmation: 'guy123')

User.all.each do |user|
    5.times do
      House.create!(
          user_id: user.id, 
          title: "house #{House.count + 1}",
          description: 'foobar',
          rooms: 2,
          vacancies: 1,
          rent: 200.00,
          active: true,
          street: 'foobar',
          number: "#{House.count + 1}",
          neighborhood: 'foo',
          city: 'Campos dos Goytacazes',
          state: 'RJ'
          )
    end
end