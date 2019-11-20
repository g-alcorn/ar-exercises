require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
surrey = Store.new do |s|
  s.name = "surrey"
  s.annual_revenue = 224000
  s.womens_apparel = true
  s.mens_apparel = false
end
surrey.save

whistler = Store.new do |s|
  s.name = "whistler"
  s.annual_revenue = "1900000"
  s.mens_apparel = true
  s.womens_apparel = false
end
whistler.save

yaletown = Store.new do |s|
  s.name = "yaletown"
  s.annual_revenue = 430000
  s.womens_apparel = true
  s.mens_apparel = true
end
yaletown.save

@mens_stores = Store.where(mens_apparel: true)
@mens_stores.each do |s|
  puts s.name, s.annual_revenue
end

@womens_stores = Store.where(womens_apparel: true, annual_revenue: (0..1000000))
puts "women's stores:"

@womens_stores.each do |s|
  puts s.name, s.annual_revenue
end
