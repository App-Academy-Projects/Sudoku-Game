class Tile
    attr_accessor :value
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

    private
    attr_reader :given
end