require 'linked_list_classes.rb'

def make_linked_list(array)
  i = 0 
  previous_node = nil
  first_node = nil
  while i < array.length
    new_node = ListNode.new(array[i])
    first_node = new_node if i == 0
    previous_node.next = new_node if !!previous_node
    previous_node = new_node
    i += 1
  end
  first_node
end

def delete_node(node)
  node.val = node.next.val
  node.next = node.next.next
  nil
end