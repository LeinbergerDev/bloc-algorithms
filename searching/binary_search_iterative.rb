# binary search 
# iterative 

class BinarySearchIterative 
    attr_accessor :base_array

    def initialize(array)
        @base_array = Array.new
        @base_array = array
    end

    def find(minIndex, maxIndex, item)
        # find the middle index 
        midIndex = getMidIndex(minIndex, maxIndex)
        while @base_array[midIndex] != item
            if midIndex > item
                midIndex = getMidIndex(minIndex, midIndex - 1)
            else
                midIndex = getMidIndex(midIndex + 1, maxIndex)
            end
        end
        if @base_array[midIndex]
            return @base_array[midIndex]
        else
            return nil
        end
    end

    private 

    def getMidIndex(minIndex, maxIndex)
        num = (maxIndex - minIndex) / 2.0
        return num.round + minIndex
    end

end