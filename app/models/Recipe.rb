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
    #return all ingredients in the recipe

  end

  def allegens
    #return all ingredient in the recipe that are allgens
  end

  def add_ingredient (array_recipe_ingredients)
    #add to recipes
  end





end
