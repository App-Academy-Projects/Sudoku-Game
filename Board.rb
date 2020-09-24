class Board
    def initialize(grid)
        @grid = grid
    end

    def self.from_file(file)
        file_data = read_line(file).map { |line| line.split("") }
    end

    def read_line(file)
        File.read(file).split
    end
end