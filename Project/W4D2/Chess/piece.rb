class Piece 
  attr_reader :color, :pos, :row, :col

  def initialize(color, board, pos)
      @color = color 
      @board = board
      @pos = pos
      @board[pos] = self
      @row, @col = @pos
  end

  def valid_moves
      moves = []
  end

  def pos=(val)
      @pos = val
  end

end