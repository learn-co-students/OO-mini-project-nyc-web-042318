class Recipe

  attr_accessor :recipe

  @@all = []

  def initialize(recipe)
    @recipe = recipe
    @@all << self
  end

  def self.all
    #Recipe.all should return all of the recipe instances
    @@all
  end

  def self.most_popular
    #should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
    hash = {}
    RecipeCard.all.each do |rc|
      hash[rc.recipe] = 0
    end
    RecipeCard.all.each do |rc|
      hash[rc.recipe] += 1
    end
    hash.max_by{|k,v| v}[0]
  end

  def recipe_cards
    RecipeCard.all.select do |r|
      r.recipe == self
    end
  end

  def users
    #should return the user instances who have recipe cards with this recipe
    recipe_cards.map do |r|
      r.user
    end
  end

  def ingredients
    #should return all of the ingredients in this recipe
    arr = RecipeIngredient.all.select do |ri|
      ri.recipe == self
    end
    arr.map do |r|
      r.ingredient
    end
  end

  def allergens
    #should return all of the ingredients in this recipe that are allergens
    ingredients.select do |i|
      Allergen.all.map do |a|
        a.ingredient == i
      end
    end
  end

  def add_ingredients(ingredients_array)
    #should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
    ingredients_array.each do |i|
      if !ingredients.include?(i)
        RecipeIngredient.new(self, i)
      end
    end
  end
end
