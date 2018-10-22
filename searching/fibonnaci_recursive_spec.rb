include RSpec

require_relative 'fibonnaci_recursive'

RSpec.describe Fibonnaci, type: Class do
    let(:fibonnaci) { Fibonnaci.new}
    describe "fib()" do
        it "should return 0 for fib(0)" do
            expect(fibonnaci.fib(0)).to eq 0
        end

        it "should return 1 for fib(1)" do
            expect(fibonnaci.fib(1)).to eq 1
        end
        
        it "should return 6765 for fib(20)" do
            expect(fibonnaci.fib(20)).to eq 6765
        end

        

    end
end