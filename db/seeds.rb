# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Experience.delete_all
User.delete_all

user1 = User.create(email: "user@gmail.com", password: "12345")

experience1 = Experience.new(name: 'Acting', description: 'act all you want', price: 50)
experience1.user_id = user1
experience1.save

# experience2 = Experience.new(name: 'Doctor', description: 'treat all you want', price: 100)
# experience2.user = user1
# experience2.save

# experience3 = Experience.new(name: 'Buddhist', description: 'go to tibet', price: 150)
# experience3.user = user1
# experience3.save

# experience4 = Experience.new(name: 'Rock-star', description: 'rap all day', price: 1000)
# experience4.user = user1
# experience4.save

# experience5 = Experience.new(name: 'Leonard di Caprio', description: 'Have  fun', price: 2000)
# experience5.user = user1
# experience5.save
puts Experience.all
