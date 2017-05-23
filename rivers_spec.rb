require ('minitest/autorun')
require ('minitest/rg')
require_relative ('rivers')
require_relative ('fish')

class TestRivers < MiniTest::Test

  def setup()
    @river = Rivers.new("Clyde")

    @fish_1 = Fish.new("Sushi")
    @fish_2 = Fish.new("Pinky")
    @fish_3 = Fish.new("Perky")
  end

  def test_get_river_name()
    assert_equal("Clyde", @river.get_river_name)
  end

  def test_river_count
    @river.add_fish_to_river(@fish_1)
    @river.add_fish_to_river(@fish_2)
    assert_equal(2, @river.river_count())
  end

  def test_add_fish_to_river()
   @river.add_fish_to_river(@fish_1)
   @river.add_fish_to_river(@fish_2)
   assert_equal(2, @river.river_count())

  end 

end # END of CLASS 