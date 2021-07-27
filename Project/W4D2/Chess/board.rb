class Board

    def initialize
        @rows = Array.new(8) {Array.new(8,nil)}
    end

    def [](pos)
        row,col = pos 
        @rows[row][col]
    end

    def []=(pos,val)
       row,col = pos 
       @rows[row][col] = val  
    end

    def move_piece(start_pos, end_pos)
        if valid_pos?(start_pos) && valid_pos?(end_pos) 
            self[end_pos] = self[start_pos]
            self[start_pos] = nil
        end
    end

    def valid_pos?(pos)
        row,col = pos 
        if pos[0].nil?
            return false 
        end
        if row < 0 || col < 0 || row > 7 || col > 7 
            return false 
        else 
            return true 
        end

    end

end



# chess = Board.new 
# piece1 = Piece.new('black',chess, [1,2])
# piece2 = Piece.new('white',chess, [2,3])
# chess[[1,2]] = piece1.color
# chess[[2,3]] = piece2.color
# p chess

# chess.move_piece([1,2],[4,4])

# p chess
