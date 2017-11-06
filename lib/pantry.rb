class Pantry

attr_reader :ingredient_name, :stock


  def initialize(stock = {})
    @ingredient_name = stock[:ingredient_name]
    @stock = stock
  end

  def stock_check(ingredient_name)
    @stock[ingredient_name]
  end

  def restock(ingredient_name, amount)
    @stock[ingredient_name] = amount
  end

end
