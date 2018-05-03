require_relative '../config/environment.rb'

u1 = User.new("User1")
u2 = User.new("User2")
u3 = User.new("User3")
u4 = User.new("User4")
u5 = User.new("User5")

r1 = Recipe.new("Recipe1")
r2 = Recipe.new("Recipe2")
r3 = Recipe.new("Recipe3")
r4 = Recipe.new("Recipe4")
r5 = Recipe.new("Recipe5")

rc1 = RecipeCard.new(u1, r2, 20180403, 5)
rc2 = RecipeCard.new(u2, r1, 20190201, 3)
rc3 = RecipeCard.new(u3, r4, 20161115, 1)
rc4 = RecipeCard.new(u4, r3, 20100104, 2)
rc5 = RecipeCard.new(u5, r5, 20090304, 4)
rc6 = RecipeCard.new(u1, r5, 20001203, 3)
rc7 = RecipeCard.new(u1, r1, 20010207, 4)
rc8 = RecipeCard.new(u1, r3, 19910807, 1)
rc9 = RecipeCard.new(u2, r5, 20170202, 1)

i1 = Ingredient.new("Pnuts")
i2 = Ingredient.new("chicken")
i3 = Ingredient.new("bbq sauce")

a1 = Allergen.new(u3, i1)
a2 = Allergen.new(u3, i3)
a3 = Allergen.new(u5, i3)
a4 = Allergen.new(u4, i3)
a5 = Allergen.new(u2, i3)
a6 = Allergen.new(u1, i3)


ri1 = RecipeIngredient.new(r1, i2)
# ri2 = RecipeIngredient.new(r1, i3)
ri3 = RecipeIngredient.new(r1, i1)


binding.pry
true
