require_relative './node'

class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def reverse!
    return unless head
    return head if head.next_node.nil?
    
   curr = self.head
   new_head = nil

   while (curr != nil)
    new_head = curr.prev_node
    curr.prev_node = curr.next_node
    curr.next_node = new_head
    curr = curr.prev_node
   end

   self.tail = self.head
   self.head = new_head.prev_node
  end
end
