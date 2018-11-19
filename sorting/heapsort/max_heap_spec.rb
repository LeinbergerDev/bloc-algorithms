include RSpec

require_relative 'max_heap'

RSpec.describe MaxHeap, type: Class do
  # 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26
  # a b c d e f g h i j  k  l  m  n  o  p  q  r  s  t  u  v  w  x  y  z
    let(:root) { Node.new(10, "j")}
    let(:maxheap) {MaxHeap.new(root)}
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

    describe "max heap" do
       it "allows a new object to be created" do
        expect(maxheap).not_to be_nil
       end

       it "initializes maxheap with a root node" do
        expect(maxheap.root.letter).to eq("j")
       end

       it "it insert the node in the left spot" do
        maxheap.insert(maxheap.root, d)
        expect(maxheap.root.left.letter).to eq("d")
      end

      it "it insert the node in the right spot" do
        maxheap.insert(maxheap.root, d)
        maxheap.insert(maxheap.root, e)
        expect(maxheap.root.letter).to eq("j")
        expect(maxheap.root.left.letter).to eq("e")
        expect(maxheap.root.right.letter).to eq("d")
      end

      it "it insert the node in the right spot" do
        maxheap.insert(maxheap.root, d)
        maxheap.insert(maxheap.root, e)
        maxheap.insert(maxheap.root, a)
        expect(maxheap.root.letter).to eq("j")
        expect(maxheap.root.left.letter).to eq("e")
        expect(maxheap.root.right.letter).to eq("d")
        expect(maxheap.root.left.left.letter).to eq("a")
      end

      it "it updates the head of the heap " do 
        maxheap.insert(maxheap.root, d)
        maxheap.insert(maxheap.root, z)
        expect(maxheap.root.letter).to eq("z")
      end

      it "should delete the d node" do
        maxheap.insert(maxheap.root, d)
        maxheap.insert(maxheap.root, e)
        maxheap.insert(maxheap.root, z)
        maxheap.delete(maxheap.root, "d")
        expect(maxheap.find(maxheap.root, "d")).to be_nil
      end

      it "should find the d node" do
        maxheap.insert(maxheap.root, d)
        maxheap.insert(maxheap.root, e)
        maxheap.insert(maxheap.root, z)
        expect(maxheap.find(maxheap.root, "d").letter).to eq("d")
      end

      it "should print out the heap" do
        maxheap.insert(maxheap.root, y)
        maxheap.insert(maxheap.root, d)
        maxheap.insert(maxheap.root, w)
        maxheap.insert(maxheap.root, f)
        maxheap.insert(maxheap.root, z)
        maxheap.insert(maxheap.root, x)
        maxheap.insert(maxheap.root, b)
        expect(maxheap.root.letter).to eq("z")
        expect(maxheap.root.left.letter).to eq("y")
        expect(maxheap.root.right.letter).to eq("x")
        expect(maxheap.root.left.left.letter).to eq("w")
        maxheap.printf
      end
    end
end