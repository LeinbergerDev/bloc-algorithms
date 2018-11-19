include RSpec
require_relative 'insertion_sort'

RSpec.describe InsertionSort, type: Class do
    

    describe "sort" do
        it "should return a sorted array" do
            @array = [ 10, 7, 12, 15]
            @sorted_array = [ 7, 10, 12, 15 ]
            @insertionSort = InsertionSort.new
            expect(@insertionSort.sort(@array).join (" ")).to eq(@sorted_array.join(" "))
        end
        
    end
end