def uniq(array)
  hash = Hash.new(0)
  array.each {|ele| hash[ele] += 1}
  return hash.keys
end

class Array 
  def two_sum
    result = []
    (0...self.length).each do |i|
      (i + 1...self.length).each do |j|
        result << [i,j] if self[i] + self[j] == 0
      end
    end
    return result
  end 
end

a = [-1,0,2,-2,1]
p a.two_sum