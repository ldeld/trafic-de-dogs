# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create!(first_name: 'Matthieu', last_name: 'Wagon', address: "lyon", email: 'matthieu@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', description: "Coucou c'est matthieu. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolorem minus maxime temporibus sint, ut maiores placeat quasi sequi quod repellat illum alias harum voluptate quas veritatis dolore suscipit doloribus?")
user = User.create!(first_name: 'Natacha', last_name: 'Wagon', address: "lyon", email: 'natacha@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', description: "Coucou c'est natacha. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolorem minus maxime temporibus sint, ut maiores placeat quasi sequi quod repellat illum alias harum voluptate quas veritatis dolore suscipit doloribus?")
user = Sitter.create!(first_name: 'Léna', last_name: 'Wagon', address: "6, allee du bon lait, lyon", email: 'lena@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', description: "Coucou c'est lena. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolorem minus maxime temporibus sint, ut maiores placeat quasi sequi quod repellat illum alias harum voluptate quas veritatis dolore suscipit doloribus?")
user = Sitter.create!(first_name: 'Lorenzo', last_name: 'Wagon', address: "39, quai St Vincent, lyon", email: 'lorenzo@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', description: "Coucou c'est lorenzo. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolorem minus maxime temporibus sint, ut maiores placeat quasi sequi quod repellat illum alias harum voluptate quas veritatis dolore suscipit doloribus?")
user = Sitter.create!(first_name: 'Kévin', last_name: 'Wagon', address: "103, avenue Paul Santy", email: 'kevin@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', description: "Coucou c'est kevin. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolorem minus maxime temporibus sint, ut maiores placeat quasi sequi quod repellat illum alias harum voluptate quas veritatis dolore suscipit doloribus?")
user = Sitter.create!(first_name: 'skdjfhs', last_name: 'Wagon', address: "lyon", email: 'sdfsd@gmail.com', password: 'topsecret', password_confirmation: 'topsecret', description: "Coucou c'est sdfsd. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolor dolorem minus maxime temporibus sint, ut maiores placeat quasi sequi quod repellat illum alias harum voluptate quas veritatis dolore suscipit doloribus?")


Dog.create!(user_id: 1, name: "doggo", age: 3, vaccines: "stuff", description: "blabla", breed: "labrador")
Dog.create!(user_id: 2, name: "natadoggo", age: 11, vaccines: "yep", description: "very old but nice dog", breed: "labrador")
Dog.create!(user_id: 3, name: "gabe", age: 75, vaccines: "no", description: "superdog supermeme", breed: "caniche")
Dog.create!(user_id: 2, name: "babydog", age: 1, vaccines: "not yet", description: "pupper", breed: "labrador")

Booking.create!(owner_id: 2, sitter_id: 3, start_date: Date.strptime("14/07/2018", "%d/%m/%Y"), end_date: Date.strptime("15/07/2018", "%d/%m/%Y"))
Booking.create!(owner_id: 2, sitter_id: 4, start_date: Date.strptime("12/06/2018", "%d/%m/%Y"), end_date: Date.strptime("13/06/2018", "%d/%m/%Y"))
Booking.create!(owner_id: 2, sitter_id: 5, start_date: Date.strptime("11/11/2017", "%d/%m/%Y"), end_date: Date.strptime("13/11/2017", "%d/%m/%Y"))
