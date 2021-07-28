require_relative "piece.rb"
# require_relative 'stepable'

class King < Piece
  # include Stepable

  def symbol
    @color
  end

  # protected

  def move_diffs
    # moves = []
    # if @board.valid_pos?([self.row + 1, self.col])
    #   moves << [self.row + 1, self.col]
    # end
    # if @board.valid_pos?([self.row - 1, self.col])
    #   moves << [self.row - 1, self.col]
    # end
    # if @board.valid_pos?([self.row, self.col + 1])
    #   moves << [self.row, self.col + 1]
    # end
    # if @board.valid_pos?([self.row, self.col - 1])
    #   moves << [self.row, self.col - 1]
    # end
    # if @board.valid_pos?([self.row + 1, self.col - 1])
    #   moves << [self.row + 1, self.col - 1]
    # end
    # if @board.valid_pos?([self.row + 1, self.col + 1])
    #   moves << [self.row + 1, self.col + 1]
    # end
    # if @board.valid_pos?([self.row - 1, self.col - 1])
    #   moves << [self.row - 1, self.col - 1]
    # end
    # if @board.valid_pos?([self.row - 1, self.col + 1])
    #   moves << [self.row - 1, self.col + 1]
    # end
    # moves.reject { |pos| !@board[pos].nil? && @board[pos].color == @color && @board.valid_pos?(pos) }
  end
end

