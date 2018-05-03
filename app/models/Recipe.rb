class Recipe
  attr_accessor :name, :recipecard

  ALL = []
  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def users
    #return all user whom has the recipe in their recipecard
    result = []
    RecipeCard.all.each do |rcard|
      result << rcard.user if rcard.recipe == self
    end
    result
  end

  def ingredients
    result = []
    RecipeIngredient.all.each do |ingredient|
      if ingredient.recipe == self
        result << ingredient.ingredient
      end
    end
result
  end

  def allergens
    result = []
    #return all ingredient in the recipe that are allgens
    Allergen.all.map do |allergen|

      self.ingredients.map do |ingredient|
        if allergen.ingredient == ingredient
          result << ingredient
        end
      end
    end
  result
  end

  def add_ingredient (ingredient_array)
    ingredient_array.each do |ingredient|
      RecipeIngredient.new(self, ingredient)
    end

  end





end
