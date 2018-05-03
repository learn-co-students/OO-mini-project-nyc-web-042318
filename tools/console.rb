require_relative '../config/environment.rb'

require_relative '../config/environment.rb'

#users
louis = User.new("Louis")
betsy = User.new("Betsy")
jeff = User.new("Jeff")
sangeetha = User.new("Sangeetha")
michelle = User.new("Michelle")
aaron = User.new("Aaron")

#recipes
pizza = Recipe.new("Pizza")
burrito = Recipe.new("Burrito")
stir_fry = Recipe.new("Stir Fry")
pasta = Recipe.new("Pasta")
sandwich = Recipe.new("Sandwich")
steak = Recipe.new("Steak")
enchilada = Recipe.new("Enchilada")
water = Recipe.new("Water")
smoothie = Recipe.new("Smoothie")
mash_potatoes = Recipe.new("Mash_potatoes")
tofu = Recipe.new("Tofu")
rice = Recipe.new("Rice")

#recipe cards
louis.add_recipe_card(pizza, "May 3, 2018", 5)
betsy.add_recipe_card(burrito, "May 21, 1990", 5)
jeff.add_recipe_card(pizza, "May 3, 2018", 5)
sangeetha.add_recipe_card(stir_fry, "April 23, 2018", 4)
michelle.add_recipe_card(pasta, "April 1, 2018", 3)
aaron.add_recipe_card(sandwich, "January 1, 2018", 4)
louis.add_recipe_card(steak, "February 1, 2018", 3)
betsy.add_recipe_card(stir_fry, "April 32, 2018", 4)
louis.add_recipe_card(burrito, "May 21, 1990", 5)
louis.add_recipe_card(rice, "May 3, 2018", 2)
betsy.add_recipe_card(tofu, "May 21, 1990", 1)
jeff.add_recipe_card(mash_potatoes, "May 3, 2018", 3)
sangeetha.add_recipe_card(water, "April 23, 2018", 2)
michelle.add_recipe_card(mash_potatoes, "April 1, 2018", 5)
aaron.add_recipe_card(sandwich, "January 1, 2018", 4)
louis.add_recipe_card(smoothie, "February 1, 2018", 1)
betsy.add_recipe_card(enchilada, "April 32, 2018", 4)
louis.add_recipe_card(burrito, "May 21, 1990", 1)

#ingredients
peanut = Ingredient.new("Peanut")
eggplant = Ingredient.new("Eggplant")
cheese = Ingredient.new("Cheese")
tomato = Ingredient.new("Tomato")
onion = Ingredient.new("Onion")
bread = Ingredient.new("Bread")
lettuce = Ingredient.new("Lettuce")
pepper = Ingredient.new("Pepper")
garlic = Ingredient.new("Garlic")
apple = Ingredient.new("Apple")
banana = Ingredient.new("Banana")
kiwi = Ingredient.new("Kiwi")

pizza.add_ingredients([cheese, tomato])
sandwich.add_ingredients([cheese, tomato, bread, lettuce, onion])
stir_fry.add_ingredients([garlic, pepper, onion])
smoothie.add_ingredients([apple, banana, kiwi])


#allergens
louis.declare_allergen(peanut)
betsy.declare_allergen(eggplant)
michelle.declare_allergen(cheese)
aaron.declare_allergen(tomato)
sangeetha.declare_allergen(onion)
jeff.declare_allergen(peanut)
sangeetha.declare_allergen(kiwi)
sangeetha.declare_allergen(tomato)



binding.pry
