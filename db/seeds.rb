# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

syd = User.create(id: 1, name: 'Sydney', username: 'sydbid', password: '123', money: 1000, miles: 1795, days: 0)

jed = FamilyMember.create(name: 'Jedediah', health: 'good', status: 'alive', user_id: syd.id, role: 'pops')
jacob = FamilyMember.create(name: 'Jacob', health: 'good', status: 'alive', user_id: syd.id, role: 'boy')
mary = FamilyMember.create(name: 'Mary', health: 'good', status: 'alive', user_id: syd.id, role: 'momma')
jess = FamilyMember.create(name: 'Jess', health: 'good', status: 'alive', user_id: syd.id, role: 'girl')

food = Supply.create(name: 'food', amount: 3000, user_id: syd.id)
bullets = Supply.create(name: 'bullets', amount: 500, user_id: syd.id)
