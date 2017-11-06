require_relative 'recipe'

class Pantry

  attr_reader :stock, :shopping_list, :ingredient
  attr_accessor :recipe

  def initialize
    @stock = {}
    @shopping_list = {}
    @recipe = recipe
    @ingredient = ingredient
  end

  def stock_check(ingredient)
    @stock[ingredient] = ingredient
  end

  def restock(ingredient, amount)
    @stock[ingredient] = amount
  end

  def add_ingredient(ingredient, amount)
    @stock[ingredient] = amount
  end

  def add_to_shopping_list(recipe)
    @shopping_list[recipe] = recipe
  end

end
