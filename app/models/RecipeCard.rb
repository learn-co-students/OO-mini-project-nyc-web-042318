class RecipeCard
  attr_accessor :user, :recipe,:date,:rating
  ALL = []
  def initialize(recipe,date,rateing)

    @recipe = recipe
    @date = date
    @rating = rating
  end

  def self.all
    ALL
  end


end
