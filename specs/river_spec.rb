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

end
