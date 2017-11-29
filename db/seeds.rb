# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(first_name: 'Matthieu', last_name: 'Wagon', city: "lyon", email: 'matthieu@gmail.com', password: 'topsecret', password_confirmation: 'topsecret')
user = User.create!(first_name: 'Natacha', last_name: 'Wagon', city: "lyon", email: 'natacha@gmail.com', password: 'topsecret', password_confirmation: 'topsecret')
user = Sitter.create!(first_name: 'Léna', last_name: 'Wagon', city: "lyon", email: 'lena@gmail.com', password: 'topsecret', password_confirmation: 'topsecret')
user = Sitter.create!(first_name: 'Lorenzo', last_name: 'Wagon', city: "lyon", email: 'lorenzo@gmail.com', password: 'topsecret', password_confirmation: 'topsecret')
user = Sitter.create!(first_name: 'Kévin', last_name: 'Wagon', city: "lyon", email: 'kevin@gmail.com', password: 'topsecret', password_confirmation: 'topsecret')
user = Sitter.create!(first_name: 'skdjfhs', last_name: 'Wagon', city: "lyon", email: 'sdfsd@gmail.com', password: 'topsecret', password_confirmation: 'topsecret')


Dog.create!(user_id: 1, name: "doggo", age: 3, vaccines: "stuff", description: "blabla", breed: "labrador")
Dog.create!(user_id: 2, name: "natadoggo", age: 11, vaccines: "yep", description: "very old but nice dog", breed: "labrador")
Dog.create!(user_id: 3, name: "gabe", age: 75, vaccines: "no", description: "superdog supermeme", breed: "caniche")
Dog.create!(user_id: 2, name: "babydog", age: 1, vaccines: "not yet", description: "pupper", breed: "labrador")

Booking.create!(owner_id: 2, sitter_id: 3, start_date: Date.strptime("14/07/2018", "%d/%m/%Y"), end_date: Date.strptime("15/07/2018", "%d/%m/%Y"))
Booking.create!(owner_id: 2, sitter_id: 4, start_date: Date.strptime("12/06/2018", "%d/%m/%Y"), end_date: Date.strptime("13/06/2018", "%d/%m/%Y"))
Booking.create!(owner_id: 2, sitter_id: 5, start_date: Date.strptime("11/11/2017", "%d/%m/%Y"), end_date: Date.strptime("13/11/2017", "%d/%m/%Y"))
