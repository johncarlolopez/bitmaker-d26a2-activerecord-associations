# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

john = Customer.create(name: 'john', mailing_address: '123 fake street', email: 'john@gmail.com')

my_order = Order.create(date: Time.now, customer: Customer.first)
