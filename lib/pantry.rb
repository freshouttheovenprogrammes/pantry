require_relative 'recipe'

class Pantry

  attr_reader :stock, :shopping_list, :name
  attr_accessor :recipe

  def initialize
    @stock = {}
    @shopping_list = {}
    @recipe = recipe
    @name = recipe[:name]
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def add_ingredient(ingredient, amount)
    @stock[ingredient] = amount
  end

  def add_to_shopping_list(recipe)
    @shopping_list[recipe] = Recipe.new({:name => name})
  end

end
