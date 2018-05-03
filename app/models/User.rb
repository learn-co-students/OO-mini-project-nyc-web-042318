class User

  attr_accessor :name

  ALL = []

  def initialize(name)
    @name = name

    ALL << self
  end

  def self.all
    ALL
  end

  def recipes
    recipe_cards = Recipecard.all.select do |recipecards|
      recipecards.user == self
    end

    recipe_cards.map do |recipecard|
      recipecard.recipe
    end
  end

  def add_recipe_card(recipe, date, rating)
    Recipecard.new(self, recipe, date, rating)
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    Allergen.all.select do |allergens|
      allergens.user == self
    end
  end

  def recipe_card_third_ratings
    # iterate through our own recipes and make a sorted list of the ratings and find the 3rd highest ratin
    #gs
    user_cards = {}

    recipe_cards = Recipecard.all.select do |recipecards|
      recipecards.user == self
    end

    recipe_cards.each do |recipecard|
      user_cards[recipecard.recipe] = recipecard.rating
    end

    sorted_ratings = user_cards.sort_by do |key, value|
      value
    end

    third_highest_rating = sorted_ratings[-3][1]

  end

  def top_three_recipes
    recipe_cards = Recipecard.all.select do |recipecards|
      recipecards.user == self
    end

    recipe_cards.select do |recipecard|
      recipecard.rating >= recipe_card_third_ratings
    end
  end

  def most_recent_recipe
    user_cards = {}

    recipe_cards = Recipecard.all.select do |recipecards|
      recipecards.user == self
    end

    recipe_cards.each do |recipecard|
      user_cards[recipecard.recipe] = recipecard.date
    end

    sorted_date = user_cards.sort_by do |key, value|
      value
    end

    sorted_date[-1][0]

  end

  def safe_recipes
    recipe_cards = Recipecard.all.select do |recipecards|
      recipecards.user == self
    end

    recipe_cards.select do |recipecard|

    end


  end

end
