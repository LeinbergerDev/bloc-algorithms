class QuickSort
    def sort(array)
        # Set the pivot value to the last item in the array
        pivot = array.last
        #pivot index
        pi = array.length - 1
        i = 0
        while i < pi
            if array[i] < array[pi]
                i = i + 1
            else
                temp = array[i]
                n = i
                for n in n..pi
                    array[n] = array[n + 1]
                end
                array[pi] = temp
                pi = pi - 1
            end
        end
        leftArray = array[0..pi-1]
        rightArray = array[pi+1..array.length - 1]
        # puts(leftArray.join(" "))
        # puts(rightArray.join(" "))
    end
end