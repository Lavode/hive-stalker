module HiveStalker
  # Container for various player statistics. Essentially a glorified struct.
  class PlayerData
    # Player ID, probably NS2/Hive2-internal.
    # @return [Fixnum]
    attr_reader :player_id

    # Steam account ID.
    # @return [Fixnum]
    attr_reader :steam_id

    # User alias (in-game name)
    # @return [String]
    attr_reader :alias

    # Score - not sure where it's used or shown.
    # @return [Fixnum]
    attr_reader :score

    # Level
    # @return [Fixnum]
    attr_reader :level

    # Experience points
    # @return [Fixnum]
    attr_reader :experience

    # Array of badges. Always empty so far.
    # @return [Array]
    attr_reader :badges

    # Skill / ELO
    # @return [Fixnum]
    attr_reader :skill

    # Total time played in seconds.
    #
    # This equals {#time_marine} + {#time_alien}
    # @return [Fixnum]
    attr_reader :time_total

    # Time played as marines in seconds.
    # @return [Fixnum]
    attr_reader :time_marine

    # Time played as aliens in seconds.
    # @return [Fixnum]
    attr_reader :time_alien

    # Time played as commander in seconds.
    # @return [Fixnum]
    attr_reader :time_commander

    # Don't know what this is. Always nil.
    # @return [NilClass]
    attr_reader :reinforced_tier

    # AdaGrad sum (https://en.wikipedia.org/wiki/Stochastic_gradient_descent#AdaGrad).
    # @return [Float]
    attr_reader :adagrad_sum

    # Geographical latitude
    # @return [Float]
    attr_reader :latitude

    # Geographical longitude
    # @return [Float]
    attr_reader :longitude

    # Continent
    # @return [String]
    attr_reader :continent

    # Initialize a new instance of the class.
    #
    # @param kwargs [Hash<Symbol, Object>] data with which to initialize the
    #   instance's attributes.
    def initialize(**kwargs)
      @player_id       = kwargs[:player_id]
      @steam_id        = kwargs[:steam_id]
      @alias           = kwargs[:alias]
      @score           = kwargs[:score]
      @level           = kwargs[:level]
      @experience      = kwargs[:experience]
      @badges          = kwargs[:badges]
      @skill           = kwargs[:skill]
      @time_total      = kwargs[:time_total]
      @time_marine     = kwargs[:time_marine]
      @time_alien      = kwargs[:time_alien]
      @time_commander  = kwargs[:time_commander]
      @reinforced_tier = kwargs[:reinforced_tier]
      @adagrad_sum     = kwargs[:adagrad_sum]
      @latitude        = kwargs[:latitude]
      @longitude       = kwargs[:longitude]
      @continent       = kwargs[:continent]
    end
  end
end
