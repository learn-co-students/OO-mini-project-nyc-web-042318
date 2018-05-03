class Recipe
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_popular
    new_hash = {}
    RecipeCard.all.each do |recipeCard|
      if new_hash.has_key?(recipeCard.recipe)
        new_hash[recipeCard.recipe] += 1
      else
        new_hash[recipeCard.recipe] = 1
      end
    end
    max_value = nil
    most_popular = ""
    new_hash.each do |key, value|
      if max_value == nil
        max_value = value
        most_popular = key
      elsif max_value < value
        max_value = value
        most_popular = key
      end
    end
    most_popular
  end

  def users
    new_array = []
    RecipeCard.all.select do |recipecard|
      if recipecard.recipe == self
        new_array.push(recipecard.user)
      end
    end
    new_array
  end

  def ingredients
    new_array = []
    RecipeIngredient.all.select do |recipecard|
      if recipecard.recipe == self
        new_array.push(recipecard.ingredient)
      end
    end
    new_array
  end

  def allergens
    new_array = []
    ingredients.select do |ingredient|
      Allergen.all.select do |allergen|
        if allergen.ingredient == ingredient
          new_array.push(ingredient)
        end
      end
    end
    new_array
  end


  def add_ingredients(ingredient_array)
    ingredient_array.each do |ingredient|
      RecipeIngredient.new(ingredient, self)
    end
  end




end
