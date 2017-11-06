require_relative 'recipe'

class Pantry

  attr_reader :stock

  def initialize
    @stock = {}
    @shopping_list = {}
    # @recipe = Recipe.new
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def add_ingredient(ingredient, amount)
    @stock[ingredient] = amount
  end

  def add_to_shopping_list(recipe)

  end

end
