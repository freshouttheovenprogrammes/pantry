require_relative 'recipe'

class Pantry

  attr_reader :stock, :shopping_list, :ingredient
  attr_accessor :recipe

  def initialize
    @stock = Hash.new(0)
    @shopping_list = Hash.new(0)[]
    @recipe = recipe
    @ingredient = ingredient
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def add_ingredient(ingredient, amount)
    @stock[ingredient] = amount
  end

  def add_to_shopping_list(recipe)
    @shopping_list[recipe] = ingredient[:name, :amount]
  end

end
