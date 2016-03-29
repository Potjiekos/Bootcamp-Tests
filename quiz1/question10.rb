# 10. Write a piece of code to demonstrate the difference between `include` and `extend` in using Ruby modules with classes to include methods. Make sure to demonstrate calling the methods with your code.

# include makes the module's methods available to the instance of a class.
# extend makes the module's methods available to the class itself.

# http://rubyquicktips.com/post/1133877859/include-vs-extend was helpful in providing an explanation.

module Greet
  def hello
    puts "Hello!"
  end
end

class Talk
  include Greet
end

# this works!
Talk.new.hello
# this results in a NoMethodError
Talk.hello

class Speak
  extend Greet
end

this results in a NoMethodError
Speak.new.hello
# this works!
Speak.hello
