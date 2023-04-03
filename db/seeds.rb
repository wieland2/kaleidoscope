# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user_1 = User.create(email:"wagner@gmail.com", password: "123456", first_name: "Wagner", last_name: "Wieland", username: "wagnerp5")

user_2 = User.create(email:"joao@gmail.com", password: "123456", first_name: "Joao Victor", last_name: "Wieland", username: "jvictor")

user_3 = User.create(email:"patricia@gmail.com", password: "123456", first_name: "Patricia", last_name: "Wieland", username: "pat21")

channel_1 = Channel.create(title: "Jupiter", description: "Everything Jupiter", user_id: 1 )

post_1 = Post.create(content: "I love this anime so so much", user_id: 1, channel_id: 1)
