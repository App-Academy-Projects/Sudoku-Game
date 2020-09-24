require 'colorize'

class Tile
    attr_accessor :value
    attr_reader :given
    def initialize(value, given)
        @value = value
        @given = given
    end

    def color
        self.given ? :blue : :red
    end

    def to_s
        value == "0" ? " " : value.to_s.colorize(color)
    end

    def can_be_changed?
        !self.given
    end

    def filled?
        self.value != "0"
    end

end