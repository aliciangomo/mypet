# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
product1 = Product.create({:name=>"blue leggins", :price => 18, :category=>"leggins" })
product2 = Product.create({:name=>"NIKE leggins", :price => 23, :category=>"leggins" })
product3 = Product.create({:name=>"ADIDAS shoes", :price => 15.50, :category=>"shoes" })
product4 = Product.create({:name=>"Yoga mat", :price => 10, :category=>"sport accessories" })
product5 = Product.create({:name=>"Weights", :price => 32, :category=>"sport accessories" })

puts "Total number of products: #{Product.all.count}"
puts "Product names: #{Product.all.pluck("name")}"
puts "Product1: #{product1.name} price: #{product1.price.round(2)}"
puts "Product2: #{product2.name} price: #{product2.price.round(2)}"
puts "Product3: #{product3.name} price: #{product3.price.round(2)}"
puts "Product4: #{product4.name} price: #{product4.price.round(2)}"
puts "Product5: #{product5.name} price: #{product5.price.round(2)}"

order1 = Order.create(total_price: 73, status: 5)
order2 = Order.create(total_price: 18, status: 5)
order3 = Order.create(total_price: 38.50, status: 5)
order4 = Order.create(total_price: 47.50, status: 5)

puts "4 orders created"

order_item1 = OrderItem.create(product: product1, order: order1, quantity: 1)
order_item2 = OrderItem.create(product: product2, order: order1, quantity: 1)
order_item3 = OrderItem.create(product: product1, order: order2, quantity: 1)
order_item4 = OrderItem.create(product: product2, order: order3, quantity: 1)
order_item5 = OrderItem.create(product: product3, order: order4, quantity: 1)
order_item6 = OrderItem.create(product: product3, order: order3, quantity: 1)
order_item7 = OrderItem.create(product: product5, order: order4, quantity: 1)
order_item8 = OrderItem.create(product: product5, order: order1, quantity: 1)

puts "8 order items created. Seed complete"
