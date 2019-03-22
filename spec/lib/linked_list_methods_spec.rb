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
