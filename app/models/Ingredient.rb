class Ingredient
  attr_accessor :name

  @@all =[]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    new_hash={}
    Allergen.all.each do |allergen|
      if new_hash[allergen.ingredient]
        new_hash[allergen.ingredient] +=1
      else
        new_hash[allergen.ingredient] = 1
      end
    end
    max_allergen_value = nil
    max_allergen_key =""
    new_hash.each do |allergen, num|
      if max_allergen_value == nil
        max_allergen_value = num
        max_allergen_key = allergen
      elsif max_allergen_value < num
        max_allergen_value = num
        max_allergen_key = allergen
      end
    end
    max_allergen_key
  end
end
