require 'pry'
def oxford_comma(array)
  case array.length
  when 1
    array.join()
    #binding.pry
  when 2
    array.join(" and ")
    #binding.pry
  else
    last_word = array.pop
    array.join(", ") << ", and #{last_word}"
    #binding.pry
  end
end

=begin
# test
array1 = ["kiwi"]
array2 = ["kiwi", "durian"]
array3 = ["kiwi", "durian", "starfruit"]
array4 = ["kiwi", "durian", "starfruit", "mangos", "dragon fruits", "lychees", "pomelos"]

puts "#{oxford_comma(array4)}"
=end