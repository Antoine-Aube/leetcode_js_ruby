#use some sort of loop that checks that if the element is an array -> then inner looop to check check inner arrays of that array
#shovel everything into an empty array called solution or answer

require "./custom_flattener/custom_flattener.rb"

RSpec.describe "customer flattener" do 
  it "returns a single array" do
    array = [[1,2],[3,[4,5]]]
    custom_array = CustomArray.new(array)

    expect(custom_array.combine).to eq([1, 2, 3, 4, 5])
  end
end