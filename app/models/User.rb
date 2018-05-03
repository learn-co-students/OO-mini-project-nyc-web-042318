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
    results = []
    #looking the recipecard for recipes
    RecipeCard.all.each do |rcard|
      results << rcard.recipe if rcard.user == self
    end
    results
  end

  def declare_allergen(ingredient)
    Allergen.new(self, ingredient)
  end

  def allergens
    results = []
    #looking thru the allegens for allegen == self
    Allergen.all.each do |allergen|
      if allergen.user == self
        results << allergen.ingredient
      end
    end
    results
  end

  def top_three_recipe
    #look thru the top 3

    result = RecipeCard.all.select do |rcard|
      rcard.user == self
    end
    result.sort_by{|r| r.rating}[-3..-1].map do |rc_inst|
      rc_inst.recipe
    end
  end

  def most_recent_recipe
    #user the last addition's to recipe book
    self.recipes.last
  end

  def safe_recipes
    results = []
    count = 0
    self.recipes.each do |recipe|
        flag = 0
      self.allergens.each do |allergen|
        if recipe.ingredients.include?(allergen)
          flag = 1
        end
      end
        if flag == 0
        results <<  recipe
      end
    end
    results
  end

end
