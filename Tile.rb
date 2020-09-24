class Tile
    attr_accessor :value
    def initialize(value)
        @value = value
        @given = false
    end

    def to_s
        self.value.to_s
    end

    def change_tile(new_value)
        self.value = new_value if !self.given
    end

    private
    attr_accessor :given
end