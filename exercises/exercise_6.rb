require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
# We haven't used the Employee class (and employees table) at all yet. If you look at this table's column structure, you'll find that it has a store_id (integer) column. This is a column that identifies which store each employee belongs to. It points to the id (integer) column of their store.

# Let's tell Active Record that these two tables are in fact related via the store_id column.
# Add the following code directly inside the Store model (class): has_many :employees
class Store < ActiveRecord::Base
  has_many :employees
end
# Add the following code directly inside the Employee model (class): belongs_to :store
class Employee < ActiveRecord::Base
  belongs_to :store
end

# Add some data into employees. Here's an example of one (note how it differs from how you create stores): @store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)



# Go ahead and create some more employees using the create method. You can do this by making multiple calls to create (like you have before.) No need to assign the employees to variables though. Create them through the @store# instance variables that you defined in previous exercises. Create a bunch under @store1 (Burnaby) and @store2 (Richmond). Eg: @store1.employees.create(...).
@store1.employees.create(first_name: "John", last_name: "Smith", hourly_rate: 40)
@store1.employees.create(first_name: "Jane", last_name: "Doe", hourly_rate: 50)
@store1.employees.create(first_name: "Bob", last_name: "Smith", hourly_rate: 45)
@store1.employees.create(first_name: "Sally", last_name: "Smith", hourly_rate: 55)
@store1.employees.create(first_name: "Joe", last_name: "Smith", hourly_rate: 65)
@store1.employees.create(first_name: "Mary", last_name: "Smith", hourly_rate: 75)
@store1.employees.create(first_name: "Bill", last_name: "Smith", hourly_rate: 85)
@store1.employees.create(first_name: "Sue", last_name: "Smith", hourly_rate: 95)

@store2.employees.create(first_name: "Tom", last_name: "Smith", hourly_rate: 105)
@store2.employees.create(first_name: "Tim", last_name: "Smith", hourly_rate: 115)
@store2.employees.create(first_name: "Tammy", last_name: "Smith", hourly_rate: 125)
@store2.employees.create(first_name: "Tina", last_name: "Smith", hourly_rate: 135)
@store2.employees.create(first_name: "Terry", last_name: "Smith", hourly_rate: 145)
@store2.employees.create(first_name: "Trevor", last_name: "Smith", hourly_rate: 155)
@store2.employees.create(first_name: "Troy", last_name: "Smith", hourly_rate: 165)
@store2.employees.create(first_name: "Tanya", last_name: "Smith", hourly_rate: 175)
@store2.employees.create(first_name: "Tara", last_name: "Smith", hourly_rate: 185)




