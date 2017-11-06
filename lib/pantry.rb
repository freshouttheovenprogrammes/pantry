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

  def restock(ingredient, amount)
    # this method takes the ingredient as the key and the amount as the value
    @stock[ingredient] = amount
  end

  def add_ingredient(ingredient, amount)
    @stock[ingredient] = amount
  end

  def add_to_shopping_list(recipe)
    # this needs to take from add an ingredient and put that into the shopping_liste
    # will receive the name from the recipe arguement...this will be the key
    @shopping_list[recipe] = @shopping_list[recipe]
  end

end
