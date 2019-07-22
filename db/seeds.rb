# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PastOrder.destroy_all
puts "Del pastorders"

Order.destroy_all
puts "deleted orders"

Cart.destroy_all
puts "Deleted carts"

Shop.destroy_all
puts "Deleted shops"

User.destroy_all
puts "Deleted Users"

Category.destroy_all
puts "Deleted categories"

Category.create(name: "Bakery")
puts Category.first.id
Category.create(name: "Restaurant")
Category.create(name: "Supermarket")
Category.create(name: "Coffee shop")
puts "#{Category.count} categories created"

Shop.create(name:"Maison Kayser",description: "French bakery in Singapore", code: 1234, location: "3 Arab Street, 12322 Singapore", category: Category.where(name: "Bakery").first, price: 4.99, ex_price: 12.00, nb_box: 4)
puts "#{Shop.count} shops created"
