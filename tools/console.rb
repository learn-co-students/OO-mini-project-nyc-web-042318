require_relative '../config/environment.rb'

u1 = User.new("u1")
u2 = User.new("u2")

r1 = Recipe.new("cake")
r2 = Recipe.new("pizza")

u1.add_recipe_card(r1,"April-6-2018",5)
u1.add_recipe_card(r2,"April-6-2018",5)




binding.pry
