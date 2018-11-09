include RSpec

require_relative 'max_heap'
require_relative 'node'
require_relative 'heap_sort'

RSpec.describe HeapSort, type: Class do
  # 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
  # a b c d e f g h i j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z
  let(:a) { Node.new(1, "a") }
  let(:b) { Node.new(2, "b") }
  let(:c) { Node.new(3, "c") }
  let(:d) { Node.new(4, "d") }
  let(:e) { Node.new(5, "e") }
  let(:f) { Node.new(6, "f") }
  let(:g) { Node.new(7, "g") }
  let(:h) { Node.new(8, "h") }
  let(:i) { Node.new(9, "i") }
  let(:j) { Node.new(10, "j") }
  let(:k) { Node.new(11, "k") }
  let(:l) { Node.new(12, "l") }
  let(:m) { Node.new(13, "m") }
  let(:n) { Node.new(14, "n") }
  let(:o) { Node.new(15, "o") }
  let(:p) { Node.new(16, "p") }
  let(:q) { Node.new(17, "q") }
  let(:r) { Node.new(18, "r") }
  let(:s) { Node.new(19, "s") }
  let(:t) { Node.new(20, "t") }
  let(:u) { Node.new(21, "u") }
  let(:v) { Node.new(22, "v") }
  let(:w) { Node.new(23, "w") }
  let(:x) { Node.new(24, "x") }
  let(:y) { Node.new(25, "y") }
  let(:z) { Node.new(26, "z") }

  let(:array) { [ i, e, c, a, h, b, f, g, d]}
  let(:heapsort) { HeapSort.new(array)}

  it "initializes a heap sort object with array" do
    expect(heapsort.array).to eq(array)
  end

  it "creates a max heap from the array object" do
    heapsort.create_heap
    heapsort.maxheap.printf
  end
end