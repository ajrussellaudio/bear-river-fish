require("minitest/autorun")
require("minitest/rg")

require_relative("../bear")

class BearTest < MiniTest::Test

  def setup
    @bear = Bear.new("Huggy")
  end

  def test_has_name
    assert_equal("Huggy", @bear.name)
  end

  def test_bear_has_stomach
    assert_equal(0, @bear.food_count)
  end

end
