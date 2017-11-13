# has (collection of) many recipe cards

class User
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    # X return all user instances
    @@all
  end

  def recipes
    # X return all recipes this user has recipe cards for

    # isolate recipe card for Dan
    # return recipes for each card
    self.recipe_cards.map do |card|
      card.recipe
    end
  end

  def recipe_cards
    # X helper method for above
    RecipeCard.all.select do |card|
      card.user == self
    end
  end

  def add_recipe_card(recipe_instance, date, rating)
    # X create new recipe card for this user and recipe
    RecipeCard.new(self, recipe_instance, date, rating)
  end

  def declare_allergen(ingredient_instance)
    # create new allergen instance for user and ingredient
  end

  def allergens
      # X return all ingredients this user is allergic to
      Allergen.all.map do |allergen|
        # binding.pry
        if allergen.user == self
          # binding.pry
          allergen.ingredient
          # binding.pry
        end
      end
  end

  #***
  def top_three_recipes
    # return three highest rated recipes for this user
    # compare ratings of objects stored in recipe cards, return top 3

  end

  def most_recent_recipe
    # X return most recent addition to user's cookbook
    self.recipe_cards[-1]
  end
end
