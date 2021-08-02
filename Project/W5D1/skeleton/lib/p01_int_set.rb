class MaxIntSet
  attr_reader :max , :store
  def initialize(max)
    @store = Array.new(max,false)
    @max = max 
  end

  def insert(num)
    raise "Out of bounds" if @store[num] == true || (num < 0 || num > @max)
    @store[num] = true   
  end

  def remove(num)
    raise "Out of bounds" if is_valid?(num) == false
    @store[num] = false
  end

  def include?(num)
    raise "Out of bounds" if is_valid?(num) == false
    @store[num] == true
  end

  private

  def is_valid?(num)
    if num < 0 || num > @max 
      return false 
    else 
      return true 
    end 
  end

  # def validate!(num)
  # end
end


class IntSet

  attr_reader :store, :num_buckets
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @num_buckets = num_buckets
  end

  def insert(num)
    return false if self[num].include?(num)
    self[num] << num
  end

  def remove(num)
    self[num].delete(num)
  end

  def include?(num)
    self[num].include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
    self.store[num % num_buckets]
    
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader  :store, :num_buckets

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @num_buckets = num_buckets
    # @count = 0
  end

  def count 
    count = 0
    @store.each do |bucket|
      count += bucket.count
    end
    count
  end
  def insert(num)
    return false if self[num].include?(num)
    self[num] << num 
  end

  def remove(num)
    self[num].delete(num)
  end

  def include?(num)
    self[num].include?(num)    
  end

  private

  def [](num)
    self.store[num % num_buckets]
  end

  def num_buckets
    @store.length
  end

  def resize!
    #@num_buckets = @num_buckets * 2
  #   self.num_buckets.times do 
  #     @store << []
  #   end
    puts "hello"
    copied = self.store
    self.store = Array.new(num_buckets*2) { Array.new}
    copied.each do |bucket|
      bucket.each do |num|
        self[num] << num 
      end
    end
    # puts "hello"
    # puts self.store.length
  end
end

