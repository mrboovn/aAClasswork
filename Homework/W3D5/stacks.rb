 
class Stack

    attr_accessor :line


    def initialize 
        @line = []
    end

    def push(ele)
        @line.push(ele)
    end

    def pop
        @line.pop
    end

    def peek
        return @line[-1]
    end

end