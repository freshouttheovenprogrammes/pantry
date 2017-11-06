require './lib/pantry'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class PantryTest < Minitest::Test

  def test_that_pantry_exists
    pantry = Pantry.new

    assert_instance_of Pantry, pantry
  end

  def test_that_pantry_is_empty
    pantry = Pantry.new

    assert_equal ({}), pantry.stock
  end

  def test_that_pantry_has_cheez
    pantry = Pantry.new
    pantry.add_ingredient("Cheese", 500)



    assert_equal 1, pantry.stock.length
  end

  def test_case_name
    pantry = Pantry.new
    r = Recipe.new("Cheese Pizza")
    r.add_ingredient("Cheese", 20)
    r.add_ingredient("Flour", 20)
    pantry.add_to_shopping_list(r)
  end
end
