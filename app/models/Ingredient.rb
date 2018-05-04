class Ingredient

  ALL = []

  attr_accessor :name

  def initialize(name)
    @name = name
    ALL << self
  end

  def self.all
    ALL
  end

  def self.most_common_allergen
    array = []
    counts = {}

    Allergen.all.each do |allergens|
      array << allergens.ingredient
    end

    array.each do |ingredients|
      counts[ingredients] ||= 0
      counts[ingredients] += 1
    end

    counts = counts.sort_by do |key, value|
      value
    end

    counter = -1
    most_common_allergen = []
    most_common_allergen << counts[-1][0]


    while counts[counter-1][1] == counts[counter][1]
     most_common_allergen << counts[counter-1][0]
     counter -=1
    end
    most_common_allergen
  end
end
