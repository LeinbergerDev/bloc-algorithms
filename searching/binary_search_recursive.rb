class BinarySearchRecursive
    attr_accessor :base_array

    def initialize(array)
        @base_array = Array.new
        @base_array = array
    end

    def find(minIndex, maxIndex, item)
        # find the middle index 
        midIndex = getMidIndex(minIndex, maxIndex)
        if item > @base_array.last || item < @base_array.first
            return nil
        end
        if @base_array[midIndex] != item
            if midIndex > item
                find(minIndex, midIndex - 1, item)
            else
                find(midIndex + 1, maxIndex, item)
            end
        elsif @base_array[midIndex] == item
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