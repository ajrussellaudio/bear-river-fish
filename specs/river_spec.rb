require("minitest/autorun")
require("minitest/rg")

require_relative("../river")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Clyde")
  end

  def test_it_has_name
    assert_equal("Clyde", @river.name)
  end

  def test_river_has_fish__empty
    result = @river.fish_count()
    assert_equal(0, result)
  end

end
