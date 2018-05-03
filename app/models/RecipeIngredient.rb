class RecipeIngredient #join between recipe and ingredient

  attr_accessor :recipe, :ingredient

  @@all =[]

  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end
end
