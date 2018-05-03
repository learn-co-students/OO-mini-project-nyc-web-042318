class RecipeCard
  attr_accessor :user, :recipe,:date,:rating
  ALL = []
  def initialize(recipe,date,rating)

    @recipe = recipe
    @date = date
    @rating = rating
    ALL << self
  end

  def self.all
    ALL
  end


end
