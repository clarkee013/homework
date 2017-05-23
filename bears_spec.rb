require ('minitest/autorun')
require ('minitest/rg')
require_relative ('bears')
require_relative ('fish')
require_relative ('rivers')

class TestBear < MiniTest::Test

  def setup()
    @bear_1 = Bear.new("Yogi")
    @bear_2 = Bear.new("Barney")

    @river = Rivers.new("Clyde")

    @fish_1 = Fish.new("Sushi")
    @fish_2 = Fish.new("Pinky")
    @fish_3 = Fish.new("Perky")
  end


  def test_get_bear_name
    assert_equal("Yogi", @bear_1.get_bear_name())
    assert_equal("Barney", @bear_2.get_bear_name())
  end


  def test_add_fish_to_stomach
    @river.add_fish_to_river(@fish_1)
    @river.add_fish_to_river(@fish_2)
    @bear_1.eat_fish(@river.get_river())
   assert_equal(1, @bear_1.stomach_count())
   assert_equal(1, @river.river_count())
  end

  def test_stomach_count
    @river.add_fish_to_river(@fish_1)
    @river.add_fish_to_river(@fish_2)
    @bear_1.eat_fish(@river.get_river())
    assert_equal(1, @bear_1.stomach_count())
    assert_equal(1, @river.river_count())
  end

  def test_bear_roar
    assert_equal("ROAR", @bear_1.bear_roar)
  end


end # END of CLASS 
