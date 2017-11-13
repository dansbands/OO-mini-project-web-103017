# join between user and ingredient (has-many-through)
# What methods should an instance of this model respond to?

class Allergen

  @@all = []

  attr_accessor :user, :ingredient

  def initialize(user, ingredient)
    @user = user
    @ingredient = ingredient
    @@all << self 
  end


  def self.all
    # return all allergen instances
    @@all
  end
end
