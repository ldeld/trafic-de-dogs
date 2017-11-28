# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# user = User.create!(first_name: 'John', last_name: 'Doe', city: "lyon", email: 'john@gmail.com', password: 'topsecret', password_confirmation: 'topsecret')
# user = User.create!(first_name: 'Léna', last_name: 'Wagon', city: "lyon", email: 'lena@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', sitter: true)
# user = User.create!(first_name: 'Natacha', last_name: 'Wagon', city: "lyon", email: 'natacha@gmail.com', password: 'topsecret', password_confirmation: 'topsecret')
# user = User.create!(first_name: 'Lorenzo', last_name: 'Wagon', city: "lyon", email: 'lorenzo@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', sitter: true)
# user = User.create!(first_name: 'Matthieu', last_name: 'Wagon', city: "lyon", email: 'matthieu@gmail.com', password: 'topsecret', password_confirmation: 'topsecret')
# user = User.create!(first_name: 'Kévin', last_name: 'Wagon', city: "lyon", email: 'kevin@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', sitter: true)
# user = User.create!(first_name: 'skdjfhs', last_name: 'Wagon', city: "lyon", email: 'sdfsd@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', sitter: true)

Dog.create!(user_id: 11, name: "doggo", age: 3, vaccines: "stuff", description: "blabla")
Dog.create!(user_id: 12, name: "natadoggo", age: 11, vaccines: "yep", description: "very old but nice dog")
Dog.create!(user_id: 13, name: "gabe", age: 75, vaccines: "no", description: "superdog supermeme")
Dog.create!(user_id: 12, name: "babydog", age: 1, vaccines: "not yet", description: "pupper")


# user = User.create!(first_name: 'Léna', last_name: 'Wagon', city: "lyon", email: 'lena@gmail.com', password: 'topsecret', password_confirmation: 'topsecret')
# user = User.create!(first_name: 'Lorenzo', last_name: 'Wagon', city: "lyon", email: 'lorenzo@gmail.com', password: 'topsecret', password_confirmation: 'topsecret')
# user = User.create!(first_name: 'Kévin', last_name: 'Wagon', city: "lyon", email: 'kevin@gmail.com', password: 'topsecret', password_confirmation: 'topsecret')
# user = User.create!(first_name: 'skdjfhs', last_name: 'Wagon', city: "lyon", email: 'sdfsd@gmail.com', password: 'topsecret', password_confirmation: 'topsecret')
