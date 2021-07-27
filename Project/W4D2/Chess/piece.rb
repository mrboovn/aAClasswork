require_relative "board.rb"
require "singleton"

class Piece 
    attr_reader :color, :moves, :pos

    def initialize(color, board, pos)
        @color = color 
        @board = Board.new
        @pos = pos
    end

    def pos=(val)
        @pos = val
    end

end

class NullPiece < Piece
    include Singleton

    def initialize
        super
    end

end

class Pawn < Piece


    # private
    def at_start_row?
        return true if @pos[0] == 1 || @pos[0] == 6
    end

    def valid_moves
        move = self.forward_dir
        moves = []
        if @board.valid_pos?([self.pos[0] + move, self.pos[1]])
            moves << [self.pos[0] + move, self.pos[1]]
        end
        if self.at_start_row? && @board.valid_pos?([self.pos[0] + move, self.pos[1]]) && @board.valid_pos?([self.pos[0] + move * 2, self.pos[1]])
            moves << [self.pos[0] + move * 2, self.pos[1]]
        end
    end

    def forward_dir
        if self.color == :W
            return -1
        elsif self.color == :B 
            return 1
        end
    end
        
end

b = Board.new
smoll_pawn = Pawn.new(:W, b, [6,0])
smoll_pawn.valid_moves