# // 6. Implement question #5 again in Ruby in two ways:
# //     a. Using a loop
# //     b. Using recursion
# //    Benchmark the two solutions (include your code for the benchmarking). Which one of your solutions is faster?

# Looping appears to be a bit faster.

require 'benchmark'

puts "How many even numbers would you like to print?"
number = gets.chomp.to_i

def looploop(number)
  array = []
  x = 1
  until array.length == number do
    if x % 2 == 0
      array << x
      x += 1
    else
      x += 1
    end
  end
  print array
end

print looploop(number)

puts Benchmark.measure { "a"*1_000_000 }

require 'benchmark'

puts "How many even numbers would you like to print?"
number = gets.chomp.to_i

def recursion(number)
  if number == 0
    return []
  else
    recursion(number - 1) << (number * 2)
  end
end

print recursion(number)

puts Benchmark.measure { "a"*1_000_000 }
