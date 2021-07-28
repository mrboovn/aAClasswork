require_relative "piece.rb"

class Pawn < Piece

  attr_reader :row, :col

  def initialize(color, board, pos)
    super(color, board, pos)
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
    moves
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
    p @board[left_diagonal]
    p @board[right_diagonal]
    return true if !@board[left_diagonal].nil? && @board[left_diagonal].color != self.color 
    return true if !@board[right_diagonal].nil? && @board[right_diagonal].color != self.color 
    false
  end
     
end