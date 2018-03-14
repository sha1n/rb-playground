require_relative "simple_unit"
require "test/unit"

class TestAdder < Test::Unit::TestCase

  def setup
    @adder = Adder.new
  end

  def teardown
    puts " Zzzz.."
  end

  def test_add
    assert_equal(2, @adder.add(1, 1))
  end
end
