
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
    count = {}
    #return the ingredients has the highest number of user allergic to
    Allergen.all.each do |allergen|
      if count.has_key?(allergen.ingredient)
        count[allergen.ingredient] += 1
      else
        count[allergen.ingredient] = 1
      end
    end
     count.max_by {|key, value| value }[0]
  end


end
