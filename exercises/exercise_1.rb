require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
burnaby = Store.new do |s|
  s.name = "burnaby"
  s.annual_revenue = 3000000
  s.womens_apparel = true
  s.mens_apparel = true
end
burnaby.save

richmond = Store.new do |s|
  s.name = "richmond"
  s.annual_revenue = 1260000
  s.womens_apparel = true
  s.mens_apparel = false
end
richmond.save

gastown = Store.new do |s|
  s.name = "gastown"
  s.annual_revenue = 190000
  s.womens_apparel = false
  s.mens_apparel = true
end
gastown.save
puts Store.count
