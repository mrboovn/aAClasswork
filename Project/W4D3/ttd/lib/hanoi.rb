class Hanoi 
  

  def initialize
    @stacks = [[1,2,3],[],[]]
  end

  def play
    until won?
      puts "Where do you want to get the disk?"
      from_input = gets.to_i
      puts "Where do you want to put the disk?"
      to_input = gets.to_i
      move
    end

  end


  def move(from_input, to_input)
    # p "Where do you want to get the disk?"
    # from_input = gets.to_i
    # p "Where do you want to put the disk?"
    # to_input = gets.to_i
    if valid_move?(from_input, to_input)
      moved_item = @stacks[from_input].shift
      @stacks[to_input].unshift(moved_item)
    end
    @stacks
  end

  def valid_move?(from_input, to_input)
    if from_input > 0 && from_input < 3 || to_input > 0 && to_input < 3
       if @stacks[to_input].length == 0 && @stacks[from_input][0] != nil
        return true 
       elsif @stacks[from_input][0] < @stacks[to_input][0]
        return true 
       end
    end
    raise "Invalid"
  end



       
  def display
    @stacks.each do |row|
      p row 
    end
  end

  def won?
    if @stacks[to_input] == 3
      return true  
    else
      return false 
    end
  end
end

a = Hanoi.new
#a.display
a.valid_move?(0,2)
a.move(0,2)
a.display