require './linked_list_classes'

def make_linked_list(array)
  i = 0 
  last_node = nil
  while i < array.length
    new_node = ListNode.new(array[i])
    new_node.next = last_node
    last_node = new_node
    i++
  end
end