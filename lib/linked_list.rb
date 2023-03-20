require_relative './node'

class LinkedList
  attr_accessor :head, :tail, :length

  def initialize
    @head = nil
    @tail = nil
    @length = 0
  end

  def reverse!
    return self if self.length < 2
    curr = @head
    @head = @tail
    @tail = curr

    i = 0
    while i < @length do
      prev = curr.next_node
      curr.next_node = curr.prev_node
      curr.prev_node = prev
      curr = prev
      i += 1
    end

    return self

  end
end
