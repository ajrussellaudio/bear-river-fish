require("minitest/autorun")
require("minitest/rg")

require_relative("../river")
require_relative("../fish")

class RiverTest < MiniTest::Test

  def setup
    @river = River.new("Clyde")
  end

  def test_it_has_name
    assert_equal("Clyde", @river.name)
  end

  def test_count_fish
    result = @river.fish_count()
    assert_equal(0, result)
  end

  def test_can_add_fish
    fish = Fish.new("Fingers")
    @river.add_fish(fish)
    assert_equal(1, @river.fish_count)
  end

  def test_can_remove_fish
    fish = Fish.new("Pie")
    @river.add_fish(fish)
    fish_to_be_eaten = @river.remove_fish()
    assert_equal(0, @river.fish_count)
    assert_equal("Pie", fish_to_be_eaten.name)
  end

end
