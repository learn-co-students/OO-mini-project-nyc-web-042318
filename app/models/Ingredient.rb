
class Ingredient
  attr_accessor :name

  ALL = []

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def self.most_common_allergen
    #return the ingredients has the highest number of user allergic to

  end


end
