# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

syd = User.create(id: 1, name: 'Sydney', username: 'sydbid', password: '123', money: 1000, miles: 1795)

jed = FamilyMember.create(id: 1, name: 'Jedediah', health: 'good', status: 'alive', user_id: syd.id, role: 'pops')
jacob = FamilyMember.create(id: 2, name: 'Jacob', health: 'good', status: 'alive', user_id: syd.id, role: 'boy')
mary = FamilyMember.create(id: 3, name: 'Mary', health: 'good', status: 'alive', user_id: syd.id, role: 'momma')
jess = FamilyMember.create(id: 4, name: 'Jess', health: 'good', status: 'alive', user_id: syd.id, role: 'girl')

food = Supply.create(id: 1, name: 'food', amount: 3000, user_id: syd.id)
bullets = Supply.create(id: 2, name: 'bullets', amount: 500, user_id: syd.id)

Event.create(id: 1, name:'dysentery')
Event.create(id: 2, name:'broken_arm')
Event.create(id: 3, name:'indians')
Event.create(id: 4, name:'dinosaurs')
Event.create(id: 5, name:'anthrax')
Event.create(id: 6, name:'flight')
Event.create(id: 7, name:'small_pox')
Event.create(id: 8, name:'zombie')
Event.create(id: 9, name:'none')
Event.create(id: 10, name:'none')
Event.create(id: 11, name:'none')
Event.create(id: 12, name:'none')
Event.create(id: 13, name:'none')
Event.create(id: 14, name:'none')
Event.create(id: 15, name:'none')
Event.create(id: 16, name:'none')
Event.create(id: 17, name:'none')
Event.create(id: 18, name:'none')
Event.create(id: 19, name:'none')
Event.create(id: 20, name:'none')
Event.create(id: 21, name:'none')
Event.create(id: 22, name:'none')
Event.create(id: 23, name:'none')
Event.create(id: 24, name:'none')
Event.create(id: 25, name:'none')
Event.create(id: 26, name:'none')
Event.create(id: 27, name:'none')
Event.create(id: 28, name:'none')
Event.create(id: 29, name:'none')
Event.create(id: 30, name:'none')
Event.create(id: 31, name:'none')
