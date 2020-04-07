require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jo = Customer.new("jordan", "Melidor")
lance = Customer.new("Lance", "Certain")
ig = Customer.new("Ignace", "Joseph")
flo = Customer.new("Florence", "Riquier")
ted = Customer.new("Teddy", "Negouai")
jojo = Customer.new("jordan", "joestar")

taco = Restaurant.new("Taco Bell")
mex = Restaurant.new("Chipotle")
mcdo = Restaurant.new("MacDonalds")
bk = Restaurant.new("Burger King")

a = jo.add_review(taco, 3)
jo.add_review(mex, 4.5)
lance.add_review(mex, 5)
lance.add_review(mcdo, 2)
jojo.add_review(taco, 3.5)
jojo.add_review(mex, 4)
ig.add_review(bk, 1.5)
flo.add_review(mcdo, 3.5)
ted.add_review(taco, 3.5)
ted.add_review(bk, 1)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line