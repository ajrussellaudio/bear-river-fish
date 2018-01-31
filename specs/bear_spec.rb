require("minitest/autorun")
require("minitest/rg")

require_relative("../bear")
require_relative("../fish")
require_relative("../river")

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

  def test_bear_can_eat_fish
    fish = Fish.new("Lunch")
    @bear.catch_fish(fish)
    assert_equal(1, @bear.food_count)
  end

  def test_bear_can_eat_fish_from_river
    river = River.new("Clyde")
    fish = Fish.new("Dinner")
    river.add_fish(fish)

    @bear.catch_fish(river.remove_fish())

    assert_equal(1, @bear.food_count())
  end

end
