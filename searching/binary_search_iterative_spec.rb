include RSpec

require_relative 'binary_search_iterative'

RSpec.describe BinarySearchIterative, type: Class do
    let(:array) {[ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]}
    let(:search) {BinarySearchIterative.new(array)}

    describe "find" do
        it "should find the value 8" do
            expect(search.find(0, 14, 8)).to eq(8)
        end
        it "should find the value 2" do
            expect(search.find(0, 14, 2)).to eq(2)
        end
        it "should find the value 15" do
            expect(search.find(0, 14, 15)).to eq(15)
        end
        it "should find the value 12" do
            expect(search.find(0, 14, 12)).to eq(12)
        end
    end
end