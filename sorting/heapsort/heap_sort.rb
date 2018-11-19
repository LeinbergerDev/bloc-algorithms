require_relative 'node'
require_relative 'max_heap'

class HeapSort 
  attr_accessor :array # an array of node objects
  attr_accessor :maxheap

  def initialize(array)
    @array = array
    
  end

  def create_heap
    return if @array == nil
    @maxheap = MaxHeap.new(Node.new(@array[0].index, @array[0].letter))
    i = 1
    for i in i..@array.length-1
      @maxheap.insert(@maxheap.root, Node.new(@array[i].index, @array[i].letter))
    end 
  end

  def sortArray
    @array = @maxheap.export_array
    return @array
  end

end