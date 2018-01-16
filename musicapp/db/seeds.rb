# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Music.create(name: 'Für Elise')
Music.create(name: 'Pachelbel\'s Canon')

Instrument.create(name: 'Piano')
Instrument.create(name: 'Violin')

Music.first.instruments << Instrument.first
Music.last.instruments << Instrument.last
