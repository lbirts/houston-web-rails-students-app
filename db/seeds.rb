# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
davis = Instructor.create(name: 'Dr. Davis')
brown = Instructor.create(name: 'Dr. Brown')

Student.create(name: 'Lauren', major: 'Computer Science', age: 22, instructor_id: brown.id)
Student.create(name: 'Liv', major: 'Public Health', age:19, instructor_id: brown.id)
Student.create(name: 'Ava', major: 'Health Education', age: 25, instructor_id: brown.id)
Student.create(name: 'Akil', major: 'Health Sciences', age: 22, instructor_id: brown.id)
Student.create(name: 'Kristie', major: 'Law 101', age: 20, instructor_id: davis.id)
Student.create(name: 'Simone', major: 'Black law', age: 23, instructor_id: davis.id)
Student.create(name: 'Linney', major: 'Race Relations', age:23, instructor_id: davis.id)
