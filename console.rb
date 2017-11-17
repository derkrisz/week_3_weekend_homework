require('pry-byebug')
require_relative('./models/customer.rb')
require_relative('./models/film.rb')
require_relative('./models/ticket.rb')

Customer.delete_all
Film.delete_all

customer1 = Customer.new({'name' => 'Keith', 'funds' => 250})
customer2 = Customer.new({'name' => 'Sandy', 'funds' => 200})
customer3 = Customer.new({'name' => 'Craig', 'funds' => 50})
customer4 = Customer.new({'name' => 'Zsolt', 'funds' => 50})
customer1.save()
customer2.save()
customer3.save()
customer4.save()

film1 = Film.new({'title' => 'Memento', 'price' => 10 })
film2 = Film.new({'title' => 'Inception', 'price' => 9 })
film3 = Film.new({'title' => '22 Jump Street', 'price' => 11 })
film4 = Film.new({'title' => 'Sausage Party', 'price' => 12})
film1.save
film2.save
film3.save
film4.save

binding.pry
nil
