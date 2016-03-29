# 11. BONUS: Rewrite the method `titleize` in question #7 without mutating any variable.

# module HelperMethods
#   def titleize(string)
#     capword = string.split(" ").map do |x|
#     (x == "in" || x == "the" || x == "of" || x == "or" || x == "from") ? x : x.capitalize
#     end
#     print capword.join(" ")
#   end
# end

module HelperMethods
  def titleize(string)
    print string.split(" ").each do |x|
      (x == "in" || x == "the" || x == "of" || x == "or" || x == "from") ? x : x.capitalize
    end
  end
end
