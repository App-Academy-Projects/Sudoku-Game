require_relative 'Tile'

class Board
    attr_accessor :grid
    attr_reader :size
    def initialize(data)
        @size = data.length
        @grid = Array.new(size) { Array.new(size) }
    end

    def self.from_file(file)
        file_data = read_line(file).map { |line| line.split("") }
    end

    def self.read_line(file)
        File.read(file).split
    end

    def fill_grid_with_data(data)
        size = data.length
        size.times do |i|
            size.times do |j|
                given = true
                tile_value = data[i][j]
                given = false if not_given_tile?(tile_value)
                self[[i, j]] = Tile.new(tile_value, given)
            end
        end
    end

    def not_given_tile?(tile_value)
        tile_value == "0"
    end

    def [](pos)
        row, col = pos[0], pos[1]
        self.grid[row][col]
    end

    def []=(pos, value)
        row, col = pos[0], pos[1]
        self.grid[row][col] = value
    end

    def update_tile(pos, val)
        tile = self[pos]
        if not valid_tile?(val)
            prompt_Invalid_tile
        elsif tile.can_be_changed? 
            self[pos].value = val.to_s
        else
            prompt_cant_change_tile
        end
    end

    def valid_tile?(tile_val)
        tile_val.is_a?(Integer) && tile_val.between?(1, 9)
    end

    def prompt_cant_change_tile
        puts "This is a given Tile, and can't change it!"
    end

    def prompt_Invalid_tile
        puts "Invalid Tile"
    end
end