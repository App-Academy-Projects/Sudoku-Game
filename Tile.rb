class Tile
    attr_accessor :value
    attr_reader :given
    def initialize(value, given)
        @value = value
        @given = given
    end

    def to_s
        self.value.to_s
    end

    def can_be_changed?
        !self.given
    end

    def filled?
        self.value != "0"
    end

end