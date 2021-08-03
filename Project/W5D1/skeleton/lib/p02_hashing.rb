class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash

    hash_int = 0
    self.each_with_index do |el, i|
      hash_int += (el + i).hash
    
    end
    hash_int
  end

  # 1 + 0 
  # 2 + 1 
  # 3 + 2 

  # 3 + 0 
  # 2 + 1
  # 1 + 2
end

class String
  def hash
    chars = self.split("")
    
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    0
  end
end
