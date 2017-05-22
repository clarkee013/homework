class SportsTeam

  def initialize(input_team_name, input_coach_name, input_players_name)
    @team_name = input_team_name
    @coach_name = input_coach_name
    @players_name = input_players_name
  end

  def get_team_name()
    return @team_name
  end

  def get_coach_name()
    return @coach_name
  end

  def get_players_name()
    return @players_name
  end
  
  def set_coach_name()
    @coach_name = coach_name
  end

  def add_new_player(new_player)
    @players_name.push "Finn Russell"
  end

end 