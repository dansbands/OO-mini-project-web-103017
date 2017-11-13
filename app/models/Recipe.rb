# has many users through recipe cards

class Recipe
  # how do we initialize recipe with all the ingredients?
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    # X return all recipe instances
    @@all
  end

  #***
  def self.most_popular
    # this one hurts my brain
        # access items in array
        # access recipe in each card
        # keep track of how many cards of each recipe
        # return the one with the most

    # return recipe with most users(has the most recipe cards)
    # returns all instances of this recipe

    # this can be a helper method; it's repeated A LOT!!!
    recipes_from_cards = RecipeCard.all.collect { |card| card.recipe }
      # map recipes from cards
    binding.pry
    # how does this work???
    recipes_from_cards.max_by { |recipe|  }
  end

  def users
    # X return user instances who have recipe cards with this recipe
    RecipeCard.all.map do |card|
      if card.recipe == self
        card.user
      end
    end.compact
  end

  def ingredients
    # X return all ingredients in this recipe
    RecipeIngredient.all.collect do |item|
      if item.recipe == self
        item.ingredient
      end
    end.compact
  end

  # FINISH INGREDENTS
  #***
  def allergens
      # X return all ingredients in recipe that are allergens
      # finished 7:14pm
      allergen_array = []

      Allergen.all.each do |allergen|
        self.ingredients.each do |ingredient|
          if ingredient.name == allergen.ingredient
              allergen_array << ingredient
          end
        end
      end
    allergen_array
  end

  def add_ingredients(ingredients_array)
    # associates items in ingredients_array with this recipe
  end


end
