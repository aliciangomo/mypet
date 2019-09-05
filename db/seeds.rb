# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all

product1 = Product.create({:name=>"blue leggins", :price_cents => 1800, :category=>"leggins", :colors=>["#4359a1","#c41f56"], :sizes=>["XL", "L", "M", "S"], :description=>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." })
product2 = Product.create({:name=>"NIKE leggins", :price_cents => 2300, :category=>"leggins", :colors=>["#4359a1","#c41f56"], :sizes=>["XL", "L", "M", "S"], :description=>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." })
product3 = Product.create({:name=>"ADIDAS shoes", :price_cents => 1550, :category=>"shoes", :colors=>["#4359a1","#c41f56"], :sizes=>[34, 40, 46, 50], :description=>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." })
product4 = Product.create({:name=>"Yoga mat", :price_cents => 1000, :category=>"sport accessories", :colors=>["#4359a1","#c41f56"], :sizes=>["XL", "L", "M", "S"], :description=>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." })
product5 = Product.create({:name=>"Weights", :price_cents => 3200, :category=>"sport accessories", :colors=>["#4359a1","#c41f56"], :sizes=>["XL", "L", "M", "S"], :description=>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum." })

puts "Total number of products: #{Product.all.count}"
puts "Product names: #{Product.all.pluck("name")}"
puts "Product1: #{product1.name} price: #{product1.price.round(2)}"
puts "Product2: #{product2.name} price: #{product2.price.round(2)}"
puts "Product3: #{product3.name} price: #{product3.price.round(2)}"
puts "Product4: #{product4.name} price: #{product4.price.round(2)}"
puts "Product5: #{product5.name} price: #{product5.price.round(2)}"

order1 = Order.create(amount_cents: 7300, status: "pending")
order2 = Order.create(amount_cents: 1800, status: "pending")
order3 = Order.create(amount_cents: 3850, status: "pending")
order4 = Order.create(amount_cents: 4750, status: "pending")

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

review1 = Review.create(content: "Absolutely brilliant", rating: 5, product: product1)
review2 = Review.create(content: "Absolutely brilliant", rating: 3, product: product1)
review3 = Review.create(content: "Very good quality", rating: 5, product: product2)
review4 = Review.create(content: "Great service", rating: 2, product: product2)

puts "reviews added"
