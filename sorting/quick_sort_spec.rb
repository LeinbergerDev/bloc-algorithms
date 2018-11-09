include RSpec

require_relative 'quick_sort'

RSpec.describe QuickSort, type: Class do
    let(:array) {["I", "E", "C", "A", "H", "B", "F", "G", "D"]}
    let(:quickSort) {QuickSort.new}

    describe "sort" do
        it "should add a single element array to the sorted array" do
            expect(quickSort.sort(["a"])).to eq(["a"])
        end
        it "should return a sorted array" do
            expect(quickSort.sort(array)).to eq(["A", "B", "C", "D", "E", "F", "G", "H", "I"])
        end
    end
end