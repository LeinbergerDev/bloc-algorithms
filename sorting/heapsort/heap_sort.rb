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
    @maxheap = MaxHeap.new(@array[0])
    i = 1
    for i in i..@array.length-1
      puts(array[i].letter)
      @maxheap.insert(@maxheap.root, @array[i])
    end
  end

end