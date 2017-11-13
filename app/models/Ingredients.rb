

class Ingredient

  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    # return all ingredient instances
    @@all
  end

  def most_common_allergen
    # return instance with the highest number of users
  end
end
