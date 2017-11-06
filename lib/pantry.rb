require_relative 'recipe'

class Pantry

  attr_reader :stock, :shopping_list, :ingredient, :name


  def initialize
    @stock = {}
    @shopping_list = {}
    @recipe = Recipe.new(name)
    @name = name
  end

  def restock(ingredient, amount)
    @stock[ingredient] = amount
  end

  def add_ingredient(ingredient, amount)
    @stock[ingredient] = amount
  end

end
