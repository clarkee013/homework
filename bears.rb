class Bear

  def initialize(input_bear_name)
    @bear_name = input_bear_name
    @stomach = []
  end

    def get_bear_name
      return @bear_name
    end

    def get_river
      return @river
    end

    def eat_fish(river)
      eat_fish = river.pop()
      @stomach << eat_fish
    end

    def stomach_count
      @stomach.count
    end

    def bear_roar
      return "ROAR"
    end

end # END of CLASS