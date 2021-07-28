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