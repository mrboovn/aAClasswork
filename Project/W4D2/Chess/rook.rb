require_relative 'piece'
require_relative 'slideable'

class Rook < Piece
  include Slideable
  attr_reader :row, :col

  def initialize(color, board, pos)
    super(color, board, pos)
  end
  
  def symbol
    @color
  end

  # protected

  def move_dirs
    # return the directions in which a rook can move
    # a rook can move horizontally (across rows and columns)
    moves = []

    i = 1
    while @board[[row + i, col]].nil?
      moves << [row + i, col]
      i += 1
    end
    if !@board[[row + i, col]].nil? && @board[[row + i, col]].color != @color
      moves << [row + i, col]
    end
    moves
  end
end