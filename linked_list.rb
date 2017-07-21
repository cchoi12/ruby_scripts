# 1.How do I push and pop a value from the stack.
class LinkedListNode
  attr_accessor :value, :next_node

  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end
end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else
    print "nil\n"
    return
  end
end

class Stack
  attr_accessor :data

  def initialize
      @data = nil
  end
#We set @data equal to the new node that we created.
#Ruby sees this from Right - > Left.
  def push(value)
    @data = LinkedListNode.new(value, @data)
  end

#First check if the stack is empty, if so raise nil.
#Then grab the first node and set it = to the next Node of the current first node.
#Then return the value back.
  def pop
    return nil if @data.nil?
    return_value = @data.value
    @data = @data.next_node
    return_value
  end
end

#set stack = to the new Stack that we create.
#conditions are usually true or false, but this is not the case.
#
def reverse_list(list)
  stack = Stack.new
  while list #Why do we use a while loop having list as the conditional?
    stack.push(list.value)
    list = list.next_node
  end
#in most dynamic languages, there are things like truthy or falsey.
#In Ruby**, nil(aka null) is falsey and false is falsey.
#ALL ELSE IS TRUTHY.
  LinkedListNode.new(stack.pop, stack.data)
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)
puts "-------"
revlist = reverse_list(node3)
print_values(revlist)

# output should be: # --> # --> # --> nil
