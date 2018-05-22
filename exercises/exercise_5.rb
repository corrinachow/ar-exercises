require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require 'faker'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

revenue = Store.sum(:annual_revenue)
avg_per_store = revenue / Store.count
greater_than_1M = Store.where("annual_revenue < ?", 1000000).count

puts revenue
puts avg_per_store
puts greater_than_1M