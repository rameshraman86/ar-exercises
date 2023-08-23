require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
# Exercise 2: Update the first store
# Load the first store (with id = 1) from the database and assign it to an instance variable @store1.
# Load the second store from the database and assign it to @store2.
# Update the first store (@store1) instance in the database. (Change its name or something.)


# class Exercise2

#   attr_accessor :store1, :store2

#   def initialize(store1, store2)
#     @store1 = store1
#     @store2 = store2
#   end

#   def update(name)
#     @store1.update(name: name)
#   end

# end

# exer2 = Exercise2.new(Store.find_by(id: 1), Store.find_by(id: 2))
# exer2.update("Calgary")


@store1 = Store.find_by(id: 1)
@store2 = Store.find_by(id: 2)
@store1.update(name: "Calgary")