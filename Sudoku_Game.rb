require_relative 'Board'

class SudokuGame
    attr_reader :board
    def initialize(data=nil)
        data ||= Board.from_file(FILE)
        @board = Board.new(data)
    end

    def play
        until board.solved?
            system("clear")
            board.render
            pos = nil
            until valid_pos?(pos)
                prompt_for_pos
                pos = input_pos
            end
            val = nil
            until valid_value?(val)
                prompt_for_value
                val = input_value
            end
            board.update_tile(pos, val)
        end
    end
    
    def prompt_for_pos
        print "Enter a position of tile Ex.`0 2`: "
    end

    def input_pos
        pos = gets.chomp.split
        pos.map(&:to_i)
    end

    def valid_pos?(pos)
        return false if not pos 
        return false if pos.length != 2
        pos.all? { |i| i.between?(0, 9) }
    end

    def prompt_for_value
        print "Enter a new value for the tile Ex.`5`: "
    end

    def input_value
        val = gets.chomp
        val.to_i
    end

    def valid_value?(val)
        return false if not val
        val.between?(1, 9)
    end
end