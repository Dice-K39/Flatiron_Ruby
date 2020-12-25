require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    array = self.split(/[.?!]/).reject{|string| string.empty?}
    array.count
    #binding.pry
    
    
    # array = []
    # array = self.split() 
    # count = 0
    
    # array.each do |word|
    #   if word.end_with?(".") == true || word.end_with?("?") == true || word.end_with?("!") == true
    #     count += 1
    #     #binding.pry
    #   end
    # end
    
    # count
  end
end