class Pantry

attr_reader :stock

  def initialize
    @stock = {}
  end

  def stock_check(ingredient_name)
    @stock[ingredient_name]
  end

end
