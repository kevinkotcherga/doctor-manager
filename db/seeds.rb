# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Doctor.create(first_name: 'Jean', last_name: 'Dupont', speciality: 'Généraliste')
Doctor.create(first_name: 'Michel', last_name: 'Bois', speciality: 'Dentiste')
Doctor.create(first_name: 'Arthur', last_name: 'Sartre', speciality: 'Podologue')

Patient.create(first_name: 'Hugo', last_name: 'Moulinet', social_security_number: '0000')
Patient.create(first_name: 'Julien', last_name: 'Martin', social_security_number: '1111')
Patient.create(first_name: 'Robert', last_name: 'Petit', social_security_number: '2222')
