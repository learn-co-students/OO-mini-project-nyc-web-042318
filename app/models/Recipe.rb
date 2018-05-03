class Recipe

  attr_accessor :name

  ALL = []

  def initialize(name)
    @name = name

    ALL << self
  end

  def self.all
    ALL
  end

  def users
    array = []
    Recipecard.all.each do |book|
      if book.recipe == self
        array << book.user
      end
    end
    array
  end

  def ingredients
    recipe_ingredients = Recipeingredient.all.select do |recipeingredient|
      recipeingredient.recipe == self
    end
    recipe_ingredients.map do |recipeingredient|
      recipeingredient.ingredient
    end
  end

  def allergens
    overlap = ingredients & Allergen.all
    overlap
  end

  def add_ingredients(ingredients)
    ingredients.each do |ingredient|
      Recipeingredient.new(self, ingredient)
    end
  end

  def self.most_popular
    array = []
    counts = {}

    Recipecard.all.each do |recipecards|
      array << recipecards.recipe
    end

    array.each do |recipe|
      counts[recipe] ||= 0
      counts[recipe] += 1
    end

    counts = counts.sort_by do |key, value|
      value
    end

    counter = -1
    most_popular = []
    most_popular << counts[-1][0]


    while counts[counter-1][1] == counts[counter][1]
     most_popular << counts[counter-1][0]
     counter -=1
   end
   most_popular
  end

end
