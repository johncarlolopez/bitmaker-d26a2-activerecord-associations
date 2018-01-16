# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

john = Viewer.create(name: 'john', age: 27)
bob = Viewer.create(name: 'bob', age: 26)

star_wars = Film.create(name: 'star wars', year: 1977)

the_prestige = Film.create(name: 'the prestige', year: 2006)
