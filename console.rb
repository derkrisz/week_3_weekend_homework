require('pry-byebug')
require_relative('./models/customer.rb')
require_relative('./models/film.rb')
require_relative('./models/ticket.rb')

Customer.delete_all
Film.delete_all
Ticket.delete_all

customer1 = Customer.new({'name' => 'Keith', 'funds' => 250})
customer2 = Customer.new({'name' => 'Sandy', 'funds' => 200})
customer3 = Customer.new({'name' => 'Craig', 'funds' => 50})
customer4 = Customer.new({'name' => 'Zsolt', 'funds' => 50})
customer1.save
customer2.save
customer3.save
customer4.save

film1 = Film.new({'title' => 'Memento', 'price' => 10 })
film2 = Film.new({'title' => 'Inception', 'price' => 9 })
film3 = Film.new({'title' => '22 Jump Street', 'price' => 11 })
film4 = Film.new({'title' => 'Sausage Party', 'price' => 12})
film1.save
film2.save
film3.save
film4.save

ticket1 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film1.id})
ticket2 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film2.id})
ticket3 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film3.id})
ticket4 = Ticket.new({'customer_id' => customer1.id, 'film_id' => film4.id})
ticket5 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film1.id})
ticket6 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film2.id})
ticket7 = Ticket.new({'customer_id' => customer2.id, 'film_id' => film3.id})
ticket8 = Ticket.new({'customer_id' => customer3.id, 'film_id' => film1.id})
ticket9 = Ticket.new({'customer_id' => customer3.id, 'film_id' => film2.id})
ticket10 = Ticket.new({'customer_id' => customer3.id, 'film_id' => film3.id})
ticket11 = Ticket.new({'customer_id' => customer4.id, 'film_id' => film2.id})
ticket12 = Ticket.new({'customer_id' => customer4.id, 'film_id' => film4.id})
ticket1.save
ticket2.save
ticket3.save
ticket4.save
ticket5.save
ticket6.save
ticket7.save
ticket8.save
ticket9.save
ticket10.save
ticket11.save
ticket12.save

binding.pry
nil
