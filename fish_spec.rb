require ('minitest/autorun')
require ('minitest/rg')
require_relative ('fish')

class TestFish < MiniTest::Test

  def setup()
    @fish_1 = Fish.new("Sushi")
    @fish_2 = Fish.new("Pinky")
    @fish_3 = Fish.new("Perky")
  end

  def test_get_fish_name
    assert_equal("Sushi", @fish_1.get_fish_name())
    assert_equal("Pinky", @fish_2.get_fish_name())
    assert_equal("Perky", @fish_3.get_fish_name())
  end



end # END of CLASS 