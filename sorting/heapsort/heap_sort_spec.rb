include RSpec

require_relative 'max_heap'
require_relative 'node'
require_relative 'heap_sort'

require 'benchmark'

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
  let(:aa) { Node.new(27, "A") }
  let(:bb) { Node.new(28, "B") }
  let(:cc) { Node.new(29, "C") }
  let(:dd) { Node.new(30, "D") }
  let(:ee) { Node.new(31, "E") }
  let(:ff) { Node.new(32, "F") }
  let(:gg) { Node.new(33, "G") }
  let(:hh) { Node.new(34, "H") }
  let(:ii) { Node.new(35, "I") }
  let(:jj) { Node.new(36, "J") }
  let(:kk) { Node.new(37, "K") }
  let(:ll) { Node.new(38, "L") }
  let(:mm) { Node.new(39, "M") }
  let(:nn) { Node.new(40, "N") }
  let(:oo) { Node.new(41, "O") }
  let(:pp) { Node.new(42, "P") }
  let(:qq) { Node.new(43, "Q") }
  let(:rr) { Node.new(44, "R") }
  let(:ss) { Node.new(45, "S") }
  let(:tt) { Node.new(46, "T") }
  let(:uu) { Node.new(47, "U") }
  let(:vv) { Node.new(48, "V") }
  let(:ww) { Node.new(49, "W") }
  let(:xx) { Node.new(50, "X") }
  let(:yy) { Node.new(51, "Y") }
  let(:zz) { Node.new(52, "Z") }

  # let(:array) { [ i, e, c, a, h, b, f, g, d, j ]}

  it "initializes a heap sort object with array" do
    @array = [ j ] 
    @heapsort = HeapSort.new(@array)
    expect(@heapsort.array).to eq(@array)
  end

  it "creates a max heap from the array object" do
    @array = [ j ] 
    @heapsort = HeapSort.new(@array)
    @heapsort.create_heap
    expect(@heapsort.maxheap.root.letter).to eq("j")
  end

  it "creates a max heap from the array object" do
    @array = [ j, a] 
    @heapsort = HeapSort.new(@array)
    @heapsort.create_heap
    expect(@heapsort.maxheap.root.letter).to eq("j")
    expect(@heapsort.maxheap.root.left.letter).to eq("a")
  end
  
  it "creates a max heap from the array object" do
    @array = [ j, a, i ] 
    @heapsort = HeapSort.new(@array)
    @heapsort.create_heap
    expect(@heapsort.maxheap.root.letter).to eq("j")
    expect(@heapsort.maxheap.root.left.letter).to eq("i")
    expect(@heapsort.maxheap.root.right.letter).to eq("a")
  end

  it "creates a max heap from the array object" do
    @array = [ a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z]
    @array_sorted = [ a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z]
    @heapsort = HeapSort.new(@array)
    @heapsort.create_heap
    puts(@heapsort.sortArray.join(" "))
    expect(@heapsort.sortArray.join(" ")).to eq(@array_sorted.join(" "))
  end

  it "benchmarks heap_sort" do
    @sorted_array = [ a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, aa, bb, cc, dd, ee, ff, gg, hh, ii, jj, kk, ll, mm, nn, oo, pp, qq, rr, ss, tt, uu, vv, ww, xx, yy, zz]
    @array = @sorted_array.shuffle
    @heapsort = HeapSort.new(@array)
    @heapsort.create_heap
    Benchmark.bm do |x|
      x.report("sort 50") { @heapsort.sortArray}
    end
  end
end