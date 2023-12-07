# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)

    #created a node (dummy) to hold the result
    dummy_head = ListNode.new
    current = dummy_head

    # initialize carry to zero
    carry = 0

    # traverse both linked lists until both are empty.
  while l1 || l2

    # Extract values from the current nodes or default to 0. Ternary        conditional expression: condition ? value_if_true : value_if_false
    x = l1 ? l1.val : 0
    y = l2 ? l2.val : 0

    # calculate the sum along with the carry from the previous step.
    sum = x + y + carry

    # update carry for the next step.
    carry = sum / 10

    # create a new node with the digit value of the sum.
    current.next = ListNode.new(sum % 10)
    # move to the next nodes in the linked lists.
    current = current.next

    l1 = l1.next if !l1.nil?
    l2 = l2.next if !l2.nil?
  end

  # if there is a carry left after the traversal, create a new node for it.
  current.next = ListNode.new(carry) if carry > 0

  # return the linked list starting from the second node (the first node is the dummy node).
  dummy_head.next
end