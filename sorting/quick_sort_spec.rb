include RSpec

require_relative 'quick_sort'

RSpec.describe QuickSort, type: Class do
    let(:array) {["E", "C", "A", "B", "F", "G", "D"]}
    let(:quickSort) {QuickSort.new}

    describe "sort" do
        it "should return a sorted array" do
            expect(quickSort.sort(array)).to eq(["A", "B", "C", "D", "E", "F", "G"])
        end
    end
end