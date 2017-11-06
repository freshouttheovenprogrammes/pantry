require_relative 'recipe'

class Pantry

  attr_reader :stock, :shopping_list
  attr_accessor :recipe
  def initialize
    @stock = {}
    @shopping_list = {}
    @recipe = Recipie.new
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def add_ingredient(ingredient, amount)
    @stock[ingredient] = amount
  end

  def add_to_shopping_list(recipe)
    @shopping_list[ingredient] = add_ingredient
  end

end
