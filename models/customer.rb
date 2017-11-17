require('pg')
require_relative('../db/sql_runner')


class Customer

  attr_reader :id
  attr_accessor :name, :funds

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @funds = options['funds']
  end

  def save
    sql = "INSERT INTO customers (name, funds) VALUES ($1, $2) RETURNING *"
  values = [@name, @funds]
  result = SqlRunner.run(sql, values).first
  @id = result["id"].to_i
  end

  def self.select_all
    sql = "SELECT * FROM customers"
    customers = SqlRunner.run(sql)
    result = customers.map { |customer| Customer.new(customer)}
    return result
  end

  def self.delete_all
    sql = "DELETE FROM customers"
    SqlRunner.run(sql)
  end

  def delete
    sql = "DELETE from customers WHERE id = $1"
    values = [@id]
    SqlRunner.run(sql, values)
  end

  def self.list
    sql = "SELECT * FROM customers"
    customers = SqlRunner.run(sql)
    return customers.map { |customer| Customer.new(customer)}
  end

  def update
    sql = "UPDATE customers SET $1 $2 WHERE id = $3"
    values = [@name, @funds, @id]
    SqlRunner.run(sql, values)
  end




end