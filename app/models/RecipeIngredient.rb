# join between ingredient and recipe (has-many-through)
# a recipe has many ingredients through this join


class RecipeIngredient

  @@all = []

  attr_accessor :ingredient, :recipe

  def initialize(ingredient, recipe)
    @ingredient = ingredient
    @recipe = recipe
    @@all << self
  end

  def self.all
    @@all
    # return all instances
  end
end


=begin

new_ingredient = Ingredient.new('tomato')
new_ingredient2 = Ingredient.new('basil')
new_ingredient3 = Ingredient.new('cheese')

new_recipe = Recipe.new('soup')
new_recipe2 = Recipe.new('pizza')


new_recipe_ingredient = RecipeIngredient.new(new_ingredient, new_recipe)
new_recipe_ingredient = RecipeIngredient.new(new_ingredient2, new_recipe)
new_recipe_ingredient = RecipeIngredient.new(new_ingredient3, new_recipe2)

new_allergen = Allergen.new("Dan", "nuts")


=end
