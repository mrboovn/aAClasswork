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

  def validate!(num)
  end
end


class IntSet
  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end
end

class ResizingIntSet
  attr_reader :count

  def initialize(num_buckets = 20)
    @store = Array.new(num_buckets) { Array.new }
    @count = 0
  end

  def insert(num)
  end

  def remove(num)
  end

  def include?(num)
  end

  private

  def [](num)
    # optional but useful; return the bucket corresponding to `num`
  end

  def num_buckets
    @store.length
  end

  def resize!
  end
end
