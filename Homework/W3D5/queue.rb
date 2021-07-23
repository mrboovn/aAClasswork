  
class Queue

    attr_accessor :queue

    def initialize
        @queue = []
    end

    def enqueue(ele)
        @queue.push(ele)
    end

    def dequeue
        @queue.shift
    end

    def peek
        return @queue[0]
    end
#
end