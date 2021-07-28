require_relative 'piece.rb'
# require_relative 'stepable'

class Knight < Piece
  # include Stepable
  attr_reader :board, :color

  POSSIBLE_MOVE = [[2,1],[2,-1],[-2,1],[-2,-1],[1,2],[-1,2],[1,-2],[-1,-2]]

  def symbol
    @color
  end

  # protected

  def move_diffs
    result = [] 
    moves = POSSIBLE_MOVE.map { |i| [pos[0]+i[0], pos[1] + i[1]] } 
    i = 0 
    while i < moves.length
      row, col = moves[i][0], moves[i][1] 
      if (row > -1 && row < 8) && (col > -1 && col < 8)
        result << [row,col]
      end 
      i += 1 
    end 
    result.reject { |pos| !@board[pos].nil? && @board[pos].color? == @color }
  end

end

