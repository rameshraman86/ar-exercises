require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_company_revenue = Store.sum(:annual_revenue)
puts "Total Revenue #{total_company_revenue}"

avg_annual_revenue = Store.sum(:annual_revenue)/Store.count(:all)
puts "Average revenue #{avg_annual_revenue}"


stores_over_1M = Store.where('annual_revenue > ?', 1000000).count(:all)
puts "Number of stores over 1M: #{stores_over_1M}"