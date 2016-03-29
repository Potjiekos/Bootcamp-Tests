# 2. Stacks & Queues: Explain the difference between a stack and a queue. Write a Ruby class called Stack and another Ruby class called Queue. Each class should have two instance methods `add` and `remove` to add an element to the stack or queue or to remove an element from the stack or queue. Make sure that each class behaves properly as per definitions of stacks and queues.

# Explanation:

# Stacks operate as a last in first out data structure- if tennis balls are placed into a tube container the first tennis ball or element to be ordered first in the container/array will be the last to be removed/executed.

class Stack

  def initialize
    @array = []
  end

  def add(element)
    @array << element
  end

  def remove
    @array.pop
  end

end

# Queues operate on a first-in-first-out principle. Methods will be executed the way in which they are ordered. First, second, third, etc.

class Queue

  def initialize
    @array = []
  end

  def add(element)
    @array << element
  end

  def remove
    @array.shift
  end

end
