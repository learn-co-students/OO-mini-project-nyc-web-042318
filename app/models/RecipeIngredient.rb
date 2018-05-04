class Recipeingredient

  ALL = []

  attr_accessor :recipe, :ingredient

  def initialize(recipe, ingredient)
    @recipe = recipe
    @ingredient = ingredient

    ALL << self
  end

  def self.all
    ALL
  end

end
