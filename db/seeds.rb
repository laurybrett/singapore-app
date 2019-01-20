# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts "Deleted Users"

Category.destroy_all
puts "Deleted categories"

Category.create(name: "Bakery")
Category.create(name: "Restaurant")
Category.create(name: "Supermarket")
Category.create(name: "Coffee shop")
puts "Created categories"
puts "category: #{Category.count}"
