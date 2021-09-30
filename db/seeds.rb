puts "Seeding customers.."
customer1 = Customer.create(name: 'Bono')
customer2 = Customer.create(name: 'Jimmy')
customer3 = Customer.create(name: 'Angelina')
customer4 = Customer.create(name: 'Lola')

# puts "Seeding baristas..."
barista1 = Barista.create(name: 'Joanne')
barista2 = Barista.create(name: 'Arjun')
barista3 = Barista.create(name: 'Forrest')
barista4 = Barista.create(name: 'Henry')

puts "Seeding orders..."
order1 = Order.create(drink: 'Drip Coffee', price: 2, quantity: 1, barista_id: 1, customer_id: 3)
order1 = Order.create(drink: 'Laxative Coffee', price: 2, quantity: 1, barista_id: 2, customer_id: 3)
order2 = Order.create(drink: 'Latte', price: 3, quantity: 1, barista_id: 2, customer_id: 1)
order3 = Order.create(drink: 'Latte', price: 3, quantity: 1, barista_id: 2, customer_id: 1)
order4 = Order.create(drink: 'Latte', price: 3, quantity: 1, barista_id: 2, customer_id: 1)
order5 = Order.create(drink: 'Chai', price: 3, quantity: 1, barista_id: 3, customer_id: 4)
order6 = Order.create(drink: 'Matcha', price: 4, quantity: 1, barista_id: 4, customer_id: 2)

puts "Finished seeding!"