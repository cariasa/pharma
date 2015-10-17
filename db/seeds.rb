# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Specialty.create(specialty: 'Pediatría')
Specialty.create(specialty: 'Gastroenterología')
Specialty.create(specialty: 'Medicina General')
Persontype.create(persontype: 'Cliente')
Persontype.create(persontype: 'Médico')
Persontype.create(persontype: 'Representativo')
City.create(city: 'Tegucigalpa')
City.create(city: 'San Pedro Sula')
City.create(city: 'La Ceiba')
City.create(city: 'Comayagua')
City.create(city: 'Choluteca')



