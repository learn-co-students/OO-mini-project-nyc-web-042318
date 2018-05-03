require_relative '../config/environment.rb'

u1 = User.new("u1")
u2 = User.new("u2")
aleks = User.new("aleks")
larry = User.new("larry")
sally = User.new("sally")

r1 = Recipe.new("cake")
r2 = Recipe.new("pizza")
r3 = Recipe.new("cupcake")
r4 = Recipe.new("icecream")

flour = Ingredient.new("flour")
sugar = Ingredient.new("sugar")
milk = Ingredient.new("milk")
eggs = Ingredient.new("eggs")
chocolate = Ingredient.new("chocolate")
cheese = Ingredient.new("cheese")
tomatoes = Ingredient.new("tomatoes")

r1.add_ingredient([flour, sugar, milk, eggs, chocolate])
r2.add_ingredient([flour, cheese, milk, eggs, tomatoes])
r3.add_ingredient([flour, cheese, chocolate, sugar, tomatoes])
r4.add_ingredient([flour, cheese, chocolate, sugar, tomatoes])

u1.add_recipe_card(r1,"April-6-2018",5)
u1.add_recipe_card(r2,"April-6-2018",3)
u1.add_recipe_card(r3,"April-6-2018",1)
u1.add_recipe_card(r4,"April-6-2018",4)
u2.add_recipe_card(r1,"April-6-2018",4)
sally.add_recipe_card(r2,"April-6-2018",4)
aleks.add_recipe_card(r3,"April-6-2018",4)
larry.add_recipe_card(r4,"April-6-2018",4)

u1.declare_allergen(milk)
sally.declare_allergen(milk)
aleks.declare_allergen(flour)
larry.declare_allergen(flour)
u2.declare_allergen(sugar)
u1.declare_allergen(eggs)




binding.pry
