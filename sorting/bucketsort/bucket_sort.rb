# the bucket sort 
class BucketSort

    def sort(array, bucket_size=5)
        # Total elements in the original array.
        n = array.length
        # find the max and min values in the array
        min_value = array.min
        max_value = array.max

        # calc the number of buckets
        bucket_count = ((max_value-min_value) / bucket_size).floor + 1
        # Create an array with bucket_count number of empty arrays
        i = 0
        
        buckets = Array.new()
        for i in 0..bucket_count
            buckets[i] = []
        end

        divider = ((max_value - 1) / bucket_count).ceil

        i = 0
        for i in 0..array.length - 1
            j = (array[i] / divider).floor
            if buckets[j] == nil
                buckets[j] = Array.new
                buckets[j].push(array[i])
            else
                buckets[j].push(array[i])
            end
        end
        
        index = 0
        array.clear
        for index in 0..buckets.length - 1 
            if buckets[index] != nil
                buckets[index] = InsertionSort.sort(buckets[index])
                array << buckets[index]
            end
        end

        return array
    end
end