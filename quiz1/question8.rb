# 8. Create a Ruby class called Article inside a module called Blog that has two attributes: title and body. Write another class called Snippet that inherits from the Article class. The Snippet method should return the same `title` but if you call `body` on a snippet object it should return the body truncated to a 100 characters with three dots at the end. This means if you create a snippet object and give it a body that has 200 characters, if you call the `body` method it should return the first 100 characters of that body and three dots at the end. If the body is 100 characters or less, it should not put three dots at the end. Include the module you built in question #7 in the Article class and use it when returning the title.

module HelperMethods
  def titleize(string)
    capword = string.split(" ").map do |x|
    (x == "in" || x == "the" || x == "of" || x == "or" || x == "from") ? x : x.capitalize
    end
    print capword.join(" ")
  end
end

module Blog

  class Article
    include HelperMethods
    attr_accessor :title, :body
    def initialize(title, body)
      @title, @body = title, body
    end
  end

  def title
    titleize(title)
  end


  class Snippet < Article
    def initizlize(title, body)
      super
    end

    def body
      if @body.length < 100
        print @body
      else
        print "#{@body.slice(1..100)}..."
      end
    end
  end
end
