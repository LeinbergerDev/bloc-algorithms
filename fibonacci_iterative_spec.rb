include RSpec

require_relative 'fibonacci_iterative'

RSpec.describe Fibonnaci, type: Class do
    let(:fibonacci_iterative) { Fibonnaci.new }

    describe "fib(num) method" do

        it "should return 0 for the first number" do
            expect(fibonacci_iterative.fib(0)).to eq 0
        end

        it "should print out 10 fib numbers in sequence" do
            expect(fibonacci_iterative.print_fib).to eq [ 0, 1, 2, 3, 5, 8, 13, 21, 34, 55]
        end

    end
end
