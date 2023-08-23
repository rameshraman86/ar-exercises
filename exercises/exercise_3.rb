require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'

puts "Exercise 3"
puts "----------"

# Your code goes here ...
class Exercise3

  attr_accessor :store3

  def initialize(store3)
    @store3 = store3
  end

  def delete()
    @store3.destroy
  end

end

exer3 = Exercise3.new(Store.find_by(id: 3))
exer3.delete()
puts Store.count