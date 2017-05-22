require ('minitest/autorun')
require ('minitest/rg')
require_relative ('sports_team')

class TestSportsTeam < MiniTest::Test

  def setup ()
    @team_name = "Glasgow Warriors"
    @coach_name = "Gregor Townsend"
    @players_name = ["Sean Lamont","Fraser Lyle","Peter Horne"]
  end

  def test_team_name()
    @team_name = SportsTeam.new("Glasgow Warriors", "Gregor Townsend", ["Sean Lamont","Fraser Lyle","Peter Horne"])
    assert_equal("Glasgow Warriors", @team_name.get_team_name())
  end

  def test_coach_name()
    @coach_name = SportsTeam.new("Glasgow Warriors", "Gregor Townsend",["Sean Lamont","Fraser Lyle","Peter Horne"])
    assert_equal("Gregor Townsend", @coach_name.get_coach_name())
  end

  def test_players_name()
    @players_name = SportsTeam.new("Glasgow Warriors", "Gregor Townsend",["Sean Lamont","Fraser Lyle","Peter Horne"])
    assert_equal(["Sean Lamont","Fraser Lyle","Peter Horne"], @players_name.get_players_name)
  end

  def test_set_coach_name()
    @coach_name = SportsTeam.new("Glasgow Warriors", "Townsend Gregor",["Sean Lamont","Fraser Lyle","Peter Horne"])
    @coach_name.set_coach_name "Townsend Gregor"
    assert_equal("Townsend Gregor", @coach_name.set)
  end

  def test_add_player()
    new_player = "Finn Russell"
    @players_name = SportsTeam.new("Glasgow Warriors", "Townsend Gregor",["Sean Lamont","Fraser Lyle","Peter Horne"])
    
  end



end
 

