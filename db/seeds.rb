# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Specialty.create(specialty: 'No Aplica')
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
Clinic.create(clinic: "HMC", address: "Las Minitas", city_id: City.find_by(city: "Tegucigalpa").id)
Clinic.create(clinic: "Policlínica", address: "3ra Ave. Comayaguela", city_id: City.find_by(city: "Tegucigalpa").id)
Clinic.create(clinic: "Viera", address: "Una calle en el Centro", city_id: City.find_by(city: "Tegucigalpa").id)
User.create(email: "admin@gmail.com", fullname: "Pharma Administrator", admin: true, password: "Hola1234")



