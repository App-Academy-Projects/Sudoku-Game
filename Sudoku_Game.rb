require_relative 'Board'

class SudokuGame
    attr_reader :board
    def initialize(data=nil)
        data ||= Board.from_file(FILE)
        @board = Board.new(data)
    end

    def play
        until board.solved?
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
        end
    end
end