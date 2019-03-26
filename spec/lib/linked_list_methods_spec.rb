require 'spec_helper'
require '/Users/samanthagibson/Development/code/leetcode-top-interview-questions-easy-linked-list-ruby/lib/linked_list_methods.rb'
require '/Users/samanthagibson/Development/code/leetcode-top-interview-questions-easy-linked-list-ruby/lib/linked_list_classes.rb'

describe "#make_linked_list" do 
  describe "creates a linked list from an array" do
    array = [4,5,1,9]
    node_1 = make_linked_list(array)
    
    it "returns the first node in the list" do 
      expect(node_1.val).to eq(4)
    end

    it "first node points to second node" do 
      expect(node_1.next.val).to eq(5)
    end
  end
end


describe "#delete_node" do 
  describe "deletes node from an array" do
    array = [4,5,1,9]
    node_1 = make_linked_list(array)
    node_to_go = node_1.next
    
    it "after deletion, the previous node point to the subsequent" do 
      delete_node(node_to_go)
      expect(node_1.next.val).to eq(1)
    end
  end
end


describe "#remove_nth_from_end" do 
  describe "Example 1" do
    array = [1,2,3,4,5]
    head = make_linked_list(array)
    n = 2
    
    it "deletes nth node from the end of linked list" do 
      remove_nth_from_end(head, n)
      expect(head.val).to eq(1)
      expect(head.next.val).to eq(2)
      expect(head.next.next.val).to eq(3)
      expect(head.next.next.next.val).to eq(5)
    end
  end

  describe "Example 2" do
    array = [1]
    head = make_linked_list(array)
    n = 1
    
    it "deletes nth node from the end of linked list" do 
      remove_nth_from_end(head, n)
      expect(head.val).to eq(nil)
    end
  end

  describe "Example 2" do
    array = [1, 2]
    head = make_linked_list(array)
    n = 1
    
    it "deletes nth node from the end of linked list" do 
      remove_nth_from_end(head, n)
      expect(head.next).to eq(nil)
    end
  end
end

describe "#reverse_list" do 
  describe "Example 1" do
    array = [1,2,3,4,5]
    head = make_linked_list(array)
    
    it "deletes nth node from the end of linked list" do 
      reverse_list(head)
      expect(head.next).to eq(nil)
    end
  end

  describe "Example 2" do
    array = []
    head = make_linked_list(array)
    
    it "deletes nth node from the end of linked list" do 
      reverse_list(head)
      expect(head).to eq(nil)
    end
  end
end

describe "#merge_two_lists" do 
  describe "Example 1" do
    array1 = [1,2,4]
    head1 = make_linked_list(array1)
    array2 = [1,3,4]
    head2 = make_linked_list(array2)
    
    it "merges the two lists" do 
      new_list_head = merge_two_lists(head1, head2)
      expect(new_list_head.val).to eq(1)
      expect(new_list_head.next.next.val).to eq(2)
      expect(new_list_head.next.next.next.val).to eq(3)
      expect(new_list_head.next.next.next.next.val).to eq(4)
      expect(new_list_head.next.next.next.next.next.val).to eq(4)
    end
  end
end

describe "#is_palindrome" do 
  describe "Example 1" do
    array = [1,2]
    head = make_linked_list(array)
    
    it "checks if list values form a palindrome" do 
      expect(is_palindrome(head)).to eq(false)
    end
  end

  describe "Example 2" do
    array = [1,2,2,1]
    head = make_linked_list(array)
    
    it "checks if list values form a palindrome" do 
      expect(is_palindrome(head)).to eq(true)
    end
  end
end

describe "#has_cycle" do 
  describe "Example 1" do
    array = [3,2,0,-4]
    head = make_linked_list(array)
    head.next.next.next.next = head.next
    
    it "checks if list values form a palindrome" do 
      expect(has_cycle(head)).to eq(true)
    end
  end

  describe "Example 2" do
    array = [1,2]
    head = make_linked_list(array)
    head.next.next = head
    
    it "checks if list values form a palindrome" do 
      expect(has_cycle(head)).to eq(true)
    end
  end

  describe "Example 3" do
    array = [1]
    head = make_linked_list(array)
    
    it "checks if list values form a palindrome" do 
      expect(has_cycle(head)).to eq(false)
    end
  end
end