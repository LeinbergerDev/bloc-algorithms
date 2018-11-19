class InsertionSort
    def self.sort(array)
        # create an empty array to create the sotred arra in
        sorted_array = []
        # use the shift method to move the first item from array argument into the sorted array
        sorted_array << array.shift
        for i in array
            index = 0
            while index < sorted_array.length
                if i <= sorted_array[index]
                    sorted_array.insert(index, i)
                    break
                elsif index == sorted_array.length-1
                    sorted_array.insert(index+1, i)
                    break
                end
                index = index + 1
            end
        end
        return sorted_array
    end
end