require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

# Your code goes here ...
@store1 = Store.first
@store2 = Store.all[1]


@store1.update(name: "Burnaby Two!")

puts @store1.name
