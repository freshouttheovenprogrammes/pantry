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
    pantry.stock_check("Cheese")
    
    assert_equal "Cheese", pantry.stock
    assert_equal ({}), pantry.stock.length
  end
end
