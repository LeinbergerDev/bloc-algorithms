require_relative 'node'
class MaxHeap
  attr_accessor :root
  attr_accessor :queue

  def initialize(node)
    @root = node
  end

  def insert(node)
    if @root.index < node.index
      # Node will replace root.
      temp = Node.new(@root.index, @root.letter)
      @root.index = node.index
      @root.letter = node.letter
      if @root.left == nil
        @root.left = temp   
      elsif @root.right == nil
        @root.right = @root.left
        @root.left = temp
      end
    else
      # node will be a child of root.
      if @root.left == nil
        @root.left = node
      elsif @root.right == nil
        if @root.left.index < node.index
          # shift left to right.
          @root.right = @root.left
          @root.left = node
        else
          @root.right = node
        end
      end
    end
  end

  def insert(root, node)
    
  end

  def delete(root, node)
    if root == nil || node == nil
        return nil
    else
        node_to_delete = find(root, node)
        if node_to_delete
            node_to_delete.letter = nil
            node_to_delete.index = nil
        end
    end
  end

  def find(root, data)
    if @root != nil
        queue = Queue.new
        queue.enq(@root)
        result = nil
        while !queue.empty?
            node = queue.deq
            return node if node.letter == data
            queue.enq(node.left) if node.left
            queue.enq(node.right) if node.right
        end
    end
  end

  def printf(children=nil)
    if @root != nil
        queue = Queue.new
        queue.enq(@root)
        result = nil
        while !queue.empty?
            node = queue.deq
            puts(node.to_s)
            queue.enq(node.left) if node.left
            queue.enq(node.right) if node.right
        end
    end
end

end