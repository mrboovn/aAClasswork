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

    def initialize(color, board, pos)
        super("", board, pos)
    end

end

class Pawn < Piece

    attr_reader :row, :col
    def initialize(color, board, pos)
        super(color, board, pos)
        @row = pos[0]
        @col = pos[1]
    end
    # private
    def at_start_row?
        return true if @row == 1 || @row == 6
    end

    def valid_moves
        move = self.forward_dir
        moves = []
        if @board.valid_pos?([self.row + move, self.col])
            moves << [self.row + move, self.col]
        end
        if self.at_start_row? && @board.valid_pos?([self.row + move, self.col]) && @board.valid_pos?([self.row + move * 2, self.col])
            moves << [self.row + move * 2, self.col]
        end
    end

    def forward_dir
        if self.color == :W
            return -1
        elsif self.color == :B 
            return 1
        end
    end

    def side_attacks
        direction =  self.forward_dir
        left_diagonal = [self.row + direction, self.col - 1]
        right_diagonal = [self.row + direction, self.col + 1]
        if @board[left_diagonal].nil? && @board[left_diagonal].color != self.color 
            @board.move_piece(self.pos, )


        
end

b = Board.new
smoll_pawn = Pawn.new(:W, b, [6,0])
smoll_pawn.valid_moves