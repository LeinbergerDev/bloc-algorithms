class Fibonnaci
    attr_accessor :numbers
   
    def fib(num) 
        if self.numbers == nil
            self.numbers = Array.new
        end

        # if num == 0 the fibonacci number is 0
        if num == 0
            self.numbers.push(0)
            return 0
        else
            # if num is not zero we need the last two numbers together to get
            # the next number in the squence
            n1 = self.numbers.last
            self.numbers.push(num)
            return n1 + num
        end
    end

    def print_fib
        array = Array.new
        my_num = fib(0)
        array.push(my_num)
        my_num = fib(1)
        array.push(my_num)
        8.times do
            my_num = fib(my_num)
            array.push(my_num)
        end
        return array
    end
    
end