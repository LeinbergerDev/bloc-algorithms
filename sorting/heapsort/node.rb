class Node
  attr_accessor :letter # this will be a letter from the english alphabit
  attr_accessor :index # the index is the number of the letter when in alphabetical order.
  attr_accessor :left # node object.  The index should be less than the root index.
  attr_accessor :right

  def initialize(index, letter)
    @letter = letter
    @index = index
  end

  def to_s
    return @letter + ": " + @index.to_s
  end

end