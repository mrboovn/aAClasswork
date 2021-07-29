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
