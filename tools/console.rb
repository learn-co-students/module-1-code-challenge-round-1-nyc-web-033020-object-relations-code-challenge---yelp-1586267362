require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# Customer Instances
mishy = Customer.new('Mishy','Jari')
michelle = Customer.new('Michelle','Frattaroli')
other_michelle = Customer.new('Michelle','Jocelyn')

# Restaurant Instances
talias = Restaurant.new('Talia\'s Steakhouse')
secondave = Restaurant.new('Second Ave Deli')
bagel = Restaurant.new('Bagel World')

# Review Instances
mishy.add_review(talias,5)
mishy.add_review(talias,4)
mishy.add_review(secondave,4)
mishy.add_review(bagel,2)
mishy.add_review(bagel,3)

michelle.add_review(talias,4)
michelle.add_review(secondave,4)
michelle.add_review(secondave,5)
michelle.add_review(bagel,4)
michelle.add_review(bagel,3)

other_michelle.add_review(talias,3)
other_michelle.add_review(secondave,3)
other_michelle.add_review(secondave,4)
other_michelle.add_review(bagel,4)
other_michelle.add_review(bagel,5)

# Method Tests
# Customer.rb
puts mishy.given_name
puts mishy.family_name
puts mishy.full_name
mishy.given_name = 'Mishi'
mishy.family_name = 'Jary'
puts mishy.full_name

puts '#reviews'
puts mishy.reviews

puts '#restaurants'
puts mishy.restaurants

puts '#num_reviews'
puts mishy.num_reviews

puts '.find_by_name(\'Michelle Jocelyn\')'
puts Customer.find_by_name('Michelle Jocelyn')

puts '.find_by_given_name(\'Michelle\')'
puts Customer.find_by_given_name('Michelle')

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
