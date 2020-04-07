require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


#[CUSTOMER]---<-[REVIEW]->---[RESTAURANT]


steve_c = Customer.new("Steve", "Cases")
rob_c = Customer.new("Rob", "Cases")
pearl_x = Customer.new("Pearl", "Xu")
tashawn_w = Customer.new("Tashawn", "Williams")


dominos = Restaurant.new("Dominos Pizza")
jp = Restaurant.new("Jacob's Pickles")

steve_c.add_review(dominos, 3)
steve_c.add_review(dominos, 2)
steve_c.add_review(jp, 5)
tashawn_w.add_review(dominos, 2)
tashawn_w.add_review(jp, 4)
rob_c.add_review(dominos, 5)
rob_c.add_review(jp, 5)
tashawn_w.add_review(jp, 5)
rob_c.add_review(jp, 3)
pearl_x.add_review(dominos, 1)
pearl_x.add_review(jp, 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line 