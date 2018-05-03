class User

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    #all should return all of the user instances
    @@all
  end

  def recipe_cards
    #should return all of the recipes this user has recipe cards for
    RecipeCard.all.select do |r|
      r.user == self
    end
  end

  def recipes
    recipe_cards.map do |r|
      r.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    #should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
    RecipeCard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    #should accept an ingredient instance as an argument, and create a new allergen instance for this user and the given ingredient
    if !allergens.include?(ingredient)
      Allergen.new(self, ingredient)
    end
  end

  def allergens
    #should return all of the ingredients this user is allergic to
    arr = Allergen.all.select do |a|
      a.user == self
    end
    arr.map do |a|
      a.ingredient
    end
  end

  def top_three_recipes
    #should return the top three highest rated recipes for this user.
    hash = {}
    recipe_cards.map do |r|
      hash[r] = r.rating
    end
    arr = hash.sort_by{|k,v| -v}.first(3)
    arr.map do |item|
      item[0].recipe
    end
  end

  def most_recent_recipe
    #should return the recipe most recently added to the user's cookbook.
    most_recent = 0
    recipe_instance = nil
    recipe_cards.each do |r|
      if r.date > most_recent
        most_recent = r.date
        recipe_instance = r
      end
    end
    recipe_instance
  end

end
