# join between user instance and recipe instance
# a user has many recipes through this join

class RecipeCard

  @@all = []

  # return the user this entry belongs to
  # returns recipe this entry belongs to
  # return date of the entry
  # return rating as integer user has given the entry
  attr_accessor :user, :recipe, :date, :rating

  def initialize(user, recipe, date, rating)
    @user = user
    @recipe = recipe
    # where do we get date & rating from?
    # should I use a ruby method to generate today's date?
    # what format should I use, since we need most recent in User?
    @date = date
    @rating = rating
    @@all << self
  end

  def self.all
    # return all recipecard instances
    @@all
  end
end


=begin

new_ingredient = Ingredient.new('tomato')
new_ingredient2 = Ingredient.new('basil')
new_ingredient3 = Ingredient.new('cheese')

new_user = User.new('Dan')
new_user2 = User.new('Melissa')

new_recipe = Recipe.new('soup')
new_recipe2 = Recipe.new('pizza')

new_recipe_card = RecipeCard.new(new_user, new_recipe, 11092017, 5)
new_recipe_card2 = RecipeCard.new(new_user, new_recipe2, 11052017, 4)
new_recipe_card3 = RecipeCard.new(new_user, new_recipe, 12072017, 3)
new_recipe_card4 = RecipeCard.new(new_user2, new_recipe, 11072017, 5)



new_recipe_ingredient = RecipeIngredient.new(new_ingredient, new_recipe)
new_recipe_ingredient = RecipeIngredient.new(new_ingredient2, new_recipe)
new_recipe_ingredient = RecipeIngredient.new(new_ingredient3, new_recipe2)

=end
