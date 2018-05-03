require 'pry'
require_relative '../config/environment.rb'


jeff = User.new("Jeffrey")
sang = User.new("Sangeetha")
betsy = User.new("Betsy")
louis = User.new("Louis")
aaron = User.new("Aaron")
michelle = User.new("Michelle")

chicken_alfredo = Recipe.new("Chicken Alfredo")
pad_thai = Recipe.new("Pad Thai")
mapo_tofu = Recipe.new("Mapo Tofu")
galbi = Recipe.new("Galbi")
salad = Recipe.new("Salad")
quesadillas = Recipe.new("quesadillas")

tomato = Ingredient.new("tomato")
garlic = Ingredient.new("garlic")
shallot = Ingredient.new("shallot")
pepper = Ingredient.new("pepper")
salt = Ingredient.new("salt")

jeff.add_recipe_card(chicken_alfredo, 2018, 5)
sang.add_recipe_card(chicken_alfredo, 2017, 4)
sang.add_recipe_card(pad_thai, 2017, 9)
betsy.add_recipe_card(mapo_tofu, 2017, 8)
louis.add_recipe_card(galbi, 2017, 10)
louis.add_recipe_card(salad, 2016, 2)
sang.add_recipe_card(quesadillas, 2014, 7)

chicken_alfredo.add_ingredients([tomato, garlic, shallot])
pad_thai.add_ingredients([tomato, garlic, shallot])
mapo_tofu.add_ingredients([tomato, garlic, shallot])
galbi.add_ingredients([tomato, garlic, shallot])
salad.add_ingredients([tomato, garlic, shallot])
quesadillas.add_ingredients([tomato, garlic, shallot])

sang.most_recent_recipe
# book1 = Recipecard.new(jeff, chicken_alfredo, 2018, 5)
# book2 = Recipecard.new(sang, chicken_alfredo, 2017, 4)
# book3 = Recipecard.new(jeff, pad_thai, 2017, 9)
# book4 = Recipecard.new(betsy, mapo_tofu, 2016, 8)
# book5 = Recipecard.new(louis, galbi, 2017, 10)
# book6 = Recipecard.new(jeff, salad, 2015, 3)
# book7 = Recipecard.new(sang, quesadillas, 2014, 7)

one = Allergen.new(sang, tomato)
two = Allergen.new(jeff, tomato)
three = Allergen.new(louis, pepper)





binding.pry
true
