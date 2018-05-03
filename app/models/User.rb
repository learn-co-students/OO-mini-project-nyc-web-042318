class User
  attr_accessor :name, :allergen

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
    new_card = RecipeCard.new(recipe,date,rating)
    new_card.user = self
  end

  def recipes
    #looking the recipecard for recipes
    RecipeCard.all.map do |rcard|
      rcard.recipe if rcard.user == self
    end
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    #looking thru the allegens for allegen == self
    Allergen.all.select do |allergen|
      allergen.user = self
    end
  end

  def top_three_recipe
    #look thru the top 3

    result = RecipeCard.all.each do |rcard|
      rcard.user == self
    end
    result.sort_by{|r| r.rating}[-3..-1]
end
  def most_recent_recipe
    #user the last addition's to recipe book
    self.recipes.last
  end
end
