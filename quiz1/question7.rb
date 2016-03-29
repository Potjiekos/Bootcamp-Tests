# 7. Implement the following code in Ruby: Create a module called HelperMethods that include a method called `titleize` that does the following: it takes in a string and returns the string back after capitalizing each word in that string. For example if you pass to the method a string "hello world" you should get back "Hello World". The methods should not capitalize the following words: in, the, of, and, or, from.


puts "Give me a string!"
string = gets.chomp

# module HelperMethods
#   def titleize(string)
#     capword = string.split(" ").map do |x|
#       if x == "in"
#         puts x
#       elsif x == "the"
#         puts x
#       elsif x == "of"
#         puts x
#       elsif x == "or"
#         puts x
#       elsif x == "from"
#         puts x
#       else
#         x.capitalize
#       end
#       print capword.join(" ")
#     end
#   end
# end

module HelperMethods
  def titleize(string)
    capword = string.split(" ").map do |x|
    (x == "in" || x == "the" || x == "of" || x == "or" || x == "from") ? x : x.capitalize
    end
    print capword.join(" ")
  end
end
