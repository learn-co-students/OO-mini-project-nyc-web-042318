class User
  attr_accessor :name,:recipecard, :allergen

  ALL = []
  def initialize(name)
    @name = name
    # @allergen = allergen
    ALL << self
  end

  def self.all
    ALL
  end

  def add_recipe_card(recipe,date,rating)
    self.recipecard = RecipeCard.new(recipe,date,rating)
    self.recipecard.user = self
  end

  def recipes
    #looking the recipecard for recipes
    RecipeCard.all.map do |rcard|
      rcard.recipe if rcard.user == self
    end
  end

  def declear_allegen(ingredient)
    self.allegen=Allegen.new(ingredient)
  end

  def allegnes
    #looking thru the allegens for allegen == self
  end

  def top_three_recipe
    #look thru the top 3
  end

  def most_recent_recipe
    #user the last addition's to recipe book
  end
end
