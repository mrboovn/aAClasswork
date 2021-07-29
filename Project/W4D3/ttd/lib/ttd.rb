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

def my_transpose(array)
   new_array = Array.new(array.length){Array.new()}
  (0...array.length).each do |i|
    (0...array.length).each do |j|
      new_array[i] << array[j][i]
    end

  end
return new_array
end
 
def stock_picker(array_prices)

#array_prices = [2, 14, 16, 8, 20, 12, 4]

lowest_price = array_prices[0]
lowest_day = 0
array_prices.each_with_index do |ele, i|
  if lowest_price > array_prices[i]
     lowest_price = array_prices[i]
     lowest_day = i
  end
end

highest_price = array_prices[0]
highest_day = 0

array_prices.each_with_index do |ele, i|
  if highest_price < array_prices[i]
     highest_price = array_prices[i]
     highest_day = i
  end
end

return [lowest_day, highest_day]

end



