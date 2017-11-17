require('pg')
require_relative('../db/sql_runner')

class Ticket

def initialize(options)
  @id = options['id'].to_i if options['id']
  @customer_id = options['customer_id'].to_i
  @film_id = options['film_id'].to_i
end

def save
  sql = "INSERT INTO tickets (customer_id, film_id) VALUES ($1, $2) RETURNING *"
  values = [@customer_id, @film_id]
  result = SqlRunner.run(sql, values).first
  @id = result["id"].to_i
end

def self.select_all
  sql = "SELECT * FROM tickets"
  tickets = SqlRunner.run(sql)
  result = tickets.map { |ticket| Ticket.new(ticket)}
  return result
end

def self.delete_all
  sql = "DELETE FROM tickets"
  SqlRunner.run(sql)
end

def delete
  sql = "DELETE from tickets WHERE id = $1"
  values = [@id]
  SqlRunner.run(sql, values)
end

def self.list
  sql = "SELECT * FROM tickets"
  tickets = SqlRunner.run(sql)
  return tickets.map { |ticket| Ticket.new(ticket)}
end

def update
  sql = "UPDATE tickets SET $1 $2 WHERE id = $3"
  values = [@customer_id, @film_id, @id]
  SqlRunner.run(sql, values)
end

end
