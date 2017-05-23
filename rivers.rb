class Rivers

  def initialize(input_river_name)
    @river_name = input_river_name
    @river = []
  end

  def get_river_name
    return @river_name
  end

  def river_count
    return @river.count
  end

  def add_fish_to_river(fish)
    return @river << fish
  end

  def get_river
    return @river
  end




end # END of CLASS