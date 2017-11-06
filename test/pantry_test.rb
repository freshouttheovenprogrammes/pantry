require './lib/pantry'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class PantryTest < Minitest::Test

  def test_that_pantry_exists
    pantry = Pantry.new

    assert_instance_of Pantry, pantry
  end

  def test_that_pantry_is_empty_can_be_restocked
    pantry = Pantry.new

    assert_equal 0, pantry.stock_check("Cheese")

    pantry.restock("Cheese", 10)

    assert_equal 10, pantry.stock_check("Cheese")
  end

  def test_that_pantry_has_cheez
    skip
    pantry = Pantry.new
    pantry.add_ingredient("Cheese", 500)

    assert_equal 1, pantry.stock.length
  end

  def test_can_add_to_shopping_list
    skip
    pantry = Pantry.new
    r = Recipe.new("Cheese Pizza")
    r.add_ingredient("Cheese", 20)
    r.add_ingredient("Flour", 20)
    pantry.add_to_shopping_list(r)

    assert_equal 1, pantry.shopping_list.length
  end

  def test_stuff
    skip
    pantry = Pantry.new
    r = Recipe.new("Spaghetti")
    r.add_ingredient("Spaghetti Noodles", 10)
    r.add_ingredient("Marinara Sauce", 10)
    r.add_ingredient("Cheese", 5)
    pantry.add_to_shopping_list(r)

    assert_equal ({"Cheese" => 25,
                    "Flour" => 20,
                    "Spaghetti Noodles" => 10,
                    "Marinara Sauce" => 10}),
                    pantry.shopping_list
  end


end
