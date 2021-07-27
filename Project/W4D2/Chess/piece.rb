class Piece 
    attr_reader :color
    def initialize(color, board, pos)
        @color = color 
        @board = Board.new
        @pos = pos 
    end

end