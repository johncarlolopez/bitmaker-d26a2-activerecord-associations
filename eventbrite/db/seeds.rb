# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

john = User.create(name: 'john')
bob = User.create(name: 'bob')
my_event = Event.create(name: 'event101', user: john)
ticket_one = Ticket.create(user:bob, event: my_event, price: 10.00)
