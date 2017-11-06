require_relative 'recipe'

class Pantry

  attr_reader :stock, :shopping_list, :ingredient


  def initialize
    # this makes empty hash! This should have what I already own
    @stock = {}
    # a different empty hash! This will be what I need!
    @shopping_list = {}
    #
  end

  def stock_check(ingredient)
    # this counts how much of something I have.
    @stock[ingredient] = ingredient
  end

  def restock(ingredient, amount)
    @stock[ingredient] = amount
  end

  def add_ingredient(ingredient, amount)
    @stock[ingredient] = amount
  end

  def add_to_shopping_list(recipe)
    @shopping_list[recipe] = @shopping_list[recipe]
  end

end
