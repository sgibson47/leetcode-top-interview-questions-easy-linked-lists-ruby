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
  node = head
  prev = nil

  (i-n).times do
    prev = node
    node = node.next
  end

  # remove the node
  if node.next
    node.val = node.next.val
    node.next = node.next.next
  elsif !node.next && prev # remove last, but not only
    prev.next = nil
  else # remove only node
    node.val = nil
  end
  nil
end

def reverse_list(head)
  return head unless head
  prev = nil
  temp = nil
  current = head
  while current.next
      temp = current.next
      current.next = prev
      prev = current
      current = temp
  end
  current.next = prev
  nil
end

def merge_two_lists(l1, l2)
  new_list_base = ListNode.new(0)
  current = new_list_base

  while l1 != nil && l2 != nil
    if l1.val < l2.val
      current.next  = l1
      l1 = l1.next
    else
      current.next = l2
      l2 = l2.next
    end
    current = current.next
  end

  if l1 != nil
    current.next = l1
  else 
    current.next = l2
  end

  new_list_base.next
end

def is_palindrome(head)
  curr = head
  values = []
  while curr != nil
    values.push(curr.val)
    curr = curr.next
  end
  i = 0 
  j = values.length - 1
  while i < j
    if values[i] != values[j]
      return false
    end
    i += 1
    j -= 1
  end
  true
end

def has_cycle(head)
  # if the list is empty or only has one node pointing to nil
  # there's no cycle!
  return false if !head || !head.next 
  
  # start two pointers
  slow = head
  fast = head

  # so long as there is a slow & a fast & fast isn't pointing to nil
  while fast && fast.next && slow
    # move the slow pointer up one
    slow = slow.next
    # move th efast pointer up two
    fast = fast.next.next

    # if the fast pointer catches up to the slow pointer
    # we know the fast pointer must have gone through a cycle
    # in order to lap/catch up to the slow pointer 
    if slow == fast
      return true
    end
  end
  # if the fast pointer represents a node that points to nil
  # we've hit the end of the list and it doesn't loop back on itself
  # i.e. there is no cycle, the while loop will break 
  false
end