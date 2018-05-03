class User
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_recipe_card(recipe, date, rating)
    RecipeCard.new(self, recipe, date, rating)
  end

  def recipes
    RecipeCard.all.select do |recipe|
      recipe.user == self
    end
  end

  def top_three_recipes
    sorted_variables = recipes.sort_by do |recipe|
      recipe.rating
    end
    sorted_variables.reverse!
    sorted_variables[0..2]
  end

  def most_recent_recipe
    count = recipes.length
    recipes[count-3..count-1]
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select do |allergen|
      allergen.user == self
    end
  end

  def safe_recipes
    safe_recipes_array = []
    safe_ingredients_array = []
    RecipeIngredient.all.each do |recipeingredient|
      self.allergens.each do |allergen|
          if !(recipeingredient.recipe.ingredients.include?(allergen.ingredient))
            safe_recipes_array << recipeingredient.recipe
          else
            break
          end
          #binding.pry
      end
      #binding.pry
    end
    #binding.pry
    safe_recipes_array = safe_recipes_array.uniq
    safe_recipes_array.pop
  end

end
