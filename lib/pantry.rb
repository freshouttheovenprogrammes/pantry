class Pantry

attr_reader :ingredient_name
attr_accessor :stock

  def initialize
    @ingredient_name = stock[:ingredient_name]
    @stock = Hash.new(0)
  end

  def stock_check(ingredient_name)
    @stock[ingredient_name]
  end

  def restock(ingredient_name, amount)
    @stock[ingredient_name] = amount
  end

end
