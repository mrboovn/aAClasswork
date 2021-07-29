require "ttd"

describe "uniq" do 
  it "remove duplicate item from array" do 
    arr = [1,2,1,3,3]
    expect(uniq(arr)).to eq([1,2,3])
  end
end


describe 'Array#two_sum' do 
  it 'find all pairs of positions' do
    # arr.two_sum = [[0, 4],[2, 3]]
    expect([-1,0,2,-2,1].two_sum).to eq([[0, 4],[2, 3]])
  end
end

describe "my_transpose" do 
  it "transposes 2D array" do
    a = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]
  expect(my_transpose(a)).to eq([[0, 3, 6],[1, 4, 7], [2, 5, 8]])

  end

end

describe "stock_picker" do 
 it "return the most profitable pair of days" do 
  a = [2, 14, 16, 8, 20, 12, 4]
  expect(stock_picker(a)).to eq([0, 4])

 end 

end

