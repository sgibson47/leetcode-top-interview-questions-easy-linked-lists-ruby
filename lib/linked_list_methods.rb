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

def remove_nth_from_end(head, n)
  # determine the length of the list
  i = 1
  current = head
  while current.next
    current = current.next
    i +=1
  end
  
  # determine which listnode should be removed
  # i - n = node_to_go
  node = head

  (i-n).times do
    node = node.next
  end

  # remove the node
  node.val = node.next.val
  node.next = node.next.next
  nil
end