class Ingredient

  attr_accessor :ingredient_name

  @@all = []

  def initialize(ingredient_name)
    @ingredient_name = ingredient_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    #should return the ingredient instance that the highest number of users are allergic to
    hash = {}
    Allergen.all.each do |a|
      hash[a.ingredient] = 0
    end
    Allergen.all.each do |a|
      hash[a.ingredient] += 1
    end
    hash.max_by{|k,v| v}[0]
  end
end
