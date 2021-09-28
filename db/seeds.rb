puts "Seeding customers.."
# Write your customer seeds here.

puts "Seeding baristas..."
barista1 = Barista.create(name: 'Andy')
barista2 = Barista.create(name: 'Michelle')
barista3 = Barista.create(name: 'Paul')
barista4 = Barista.create(name: 'Ronnie')

puts "Seeding orders..."
# Write your order seeds here.

puts "Finished seeding!"