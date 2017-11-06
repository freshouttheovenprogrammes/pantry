require './lib/pantry'
require 'minitest/autorun'
require 'minitest/pride'

class PantryTest < Minitest::Test

  def test_that_pantry_exists
    pantry = Pantry.new

    assert_instance_of Pantry, pantry
  end

  def test_that_pantry_is_empty
    pantry = Pantry.new

    assert_equal ({}), pantry.stock
  end

end
