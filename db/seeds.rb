# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

syd = User.create(id: 1, name: 'Sydney', username: 'sydbid', password: '123', money: 1000, miles: 1795, days: 0)

jed = FamilyMember.create(id: 1, name: 'Jedediah', health: 'good', status: 'alive', user_id: syd.id, role: 'pops')
jacob = FamilyMember.create(id: 2, name: 'Jacob', health: 'good', status: 'alive', user_id: syd.id, role: 'boy')
mary = FamilyMember.create(id: 3, name: 'Mary', health: 'good', status: 'alive', user_id: syd.id, role: 'momma')
jess = FamilyMember.create(id: 4, name: 'Jess', health: 'good', status: 'alive', user_id: syd.id, role: 'girl')

food = Supply.create(id: 1, name: 'food', amount: 3000, user_id: syd.id)
bullets = Supply.create(id: 2, name: 'bullets', amount: 500, user_id: syd.id)

Event.create(user_id: syd.id, name:'dysentery')
Event.create(user_id: syd.id, name:'broken_arm')
Event.create(user_id: syd.id, name:'indians')
Event.create(user_id: syd.id, name:'dinosaurs')
Event.create(user_id: syd.id, name:'anthrax')
Event.create(user_id: syd.id, name:'flight')
Event.create(user_id: syd.id, name:'small_pox')
Event.create(user_id: syd.id, name:'zombie')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
Event.create(user_id: syd.id, name:'none')
