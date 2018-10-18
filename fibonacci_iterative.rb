class Fibonnaci
    attr_accessor :numbers
   
    def fib(num) 
        if self.numbers == nil
            self.numbers = Array.new
        end

        # if num = 0 then add 0 to the array and return 0
        if num == 0
            self.numbers << 0
            return 0
        else
            n1 = self.numbers.last
            puts(n1)
            fib_num = n1 + num
            puts(fib_num)
            self.numbers << fib_num
            puts(numbers)
            return fib_num
        end
    end

    def print_fib
        my_num = fib(0)
        my_num = fib(1)
        8.times do
            my_num = fib(my_num)
        end
    end
    
end