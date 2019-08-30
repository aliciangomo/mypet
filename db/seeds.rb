# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
product1 = Product.create({:name=>"blue leggins", :price => 18 })
product2 = Product.create({:name=>"NIKE leggins", :price => 23 })
product3 = Product.create({:name=>"ADIDAS shoes", :price => 15.50 })
product4 = Product.create({:name=>"Yoga mat", :price => 10 })
product5 = Product.create({:name=>"Weights", :price => 32 })

puts "Total number of products: #{Product.all.count}"
puts "Product names: #{Product.all.pluck("name")}"
puts "Product1: #{product1.name} price: #{product1.price.round(2)}"
puts "Product2: #{product2.name} price: #{product2.price.round(2)}"
puts "Product3: #{product3.name} price: #{product3.price.round(2)}"
puts "Product4: #{product4.name} price: #{product4.price.round(2)}"
puts "Product5: #{product5.name} price: #{product5.price.round(2)}"
