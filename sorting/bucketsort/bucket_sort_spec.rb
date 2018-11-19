include RSpec
require_relative 'insertion_sort'
require_relative 'bucket_sort'

require 'benchmark'

RSpec.describe BucketSort, type: Class do
    

    describe "sort" do
        it "should return a sorted array" do
            @array = [ 25, 1, 24, 2, 23, 3, 22, 4, 21, 5, 20, 6, 19, 7, 18, 8, 17, 9, 16, 10, 15, 11, 14, 12, 13 ]
            @sorted_array = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 ]
            @bucket_sort = BucketSort.new
            expect(@bucket_sort.sort(@array, 5).join(" ")).to eq(@sorted_array.join(" "))
        end
        
        
        it "benchmark for bucket sort" do
            i = 0
            @array = Array.new(50) { |i| i = i+1 }
            puts(@array.length)
            puts(@array.join(" "))
            @array.shuffle!
            puts(@array.join(" "))
            @bucket_sort = BucketSort.new
            @sortedArray = Array.new
            Benchmark.bm do |x|
                x.report("sort 50") { @sortedArray = @bucket_sort.sort(@array)}
            end
            puts(@sortedArray.join(" "))
        end
    end
end