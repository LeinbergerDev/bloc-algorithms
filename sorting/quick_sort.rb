class QuickSort
    attr_accessor :sorted_array

    def initialize
        @sorted_array = Array.new
    end

    def sort(array)
        if array.length == 0
            return
        end
        if array.length == 1
            @sorted_array << array[0]
        else
            pi = array.length - 1
            pivot = array[pi]
            i = 0
            while i < pi
                if array[i] < pivot
                    i = i + 1
                else
                    temp = array[i]
                    n = i
                    for n in n..pi 
                        array[n] = array[n+1]
                    end
                    array[pi] = temp
                    pi = pi - 1
                end
            end
            # sort left side
            if array[0..pi-1] != nil
                sort(array[0..pi-1])
            end
            # Add the pivot to the sorted array.
            if  pivot != nil  && pi != 0
                @sorted_array << pivot
            end 
            # sort the right array
            if array[pi+1..array.length-1].length != 0 && pi != 0
                sort(array[pi+1..array.length-1])
            end
        end
        return @sorted_array
    end

    
end

