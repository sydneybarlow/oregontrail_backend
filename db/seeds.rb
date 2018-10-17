# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

syd = User.create(id: 1, name: 'Sydney', username: 'sydbid', password: '123', money: 1000)

jed = FamilyMember.create(id: 1, name: 'Jedediah', health: 'good', status: 'alive', user_id: syd.id)
jacob = FamilyMember.create(id: 2, name: 'Jacob', health: 'good', status: 'alive', user_id: syd.id)

food = Supply.create(id: 1, name: 'food', amount: 30, user_id: syd.id)
bullets = Supply.create(id: 2, name: 'bullets', amount: 50, user_id: syd.id)
