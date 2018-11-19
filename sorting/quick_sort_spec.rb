include RSpec

require_relative 'quick_sort'
require 'benchmark'

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

        it "should sort a 50 item array" do
            @sorted_array = Array.new(50) { |i| i = i+1 }
            @array = @sorted_array.shuffle
            expect(quickSort.sort(@array)).to eq(@sorted_array)
        end
        it "benchmarks qick sort" do
            @sorted_array = Array.new(50) { |i| i = i+1 }
            @array = @sorted_array.shuffle
            Benchmark.bm do |x|
                x.report("sort 50") { quickSort.sort(@array)}
            end
        end
    end
end