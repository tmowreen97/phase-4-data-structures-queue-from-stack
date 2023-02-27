require_relative './stack'
require 'pry'

# your code here
class MyQueue
  def initialize
    @s1 = Stack.new
    @s2 = Stack.new
  end

  def add value
    @s1.push(value)
    @s2.push(value)
  end

  def remove
    # binding.pry
    result = []
    element = @s1.peek
    until @s1.empty?
      if @s1.peek
        result.push(@s1.peek)
        element = @s1.peek
        @s2.pop

        @s1.pop
      else
        element
      end
    end
    @s1.push(result).flatten!.pop
    @s2.push(result).flatten!.pop
    element
    # binding.pry
   end

  def peek
    


  end




end