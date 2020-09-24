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
end