require "pry"

def reverse_each_word(string_sentence)
  # EACH
  string_array = string_sentence.split(" ")
  
  reversed_string_array = []
  
  string_array.each do |string|
    reversed_string_array.push(string.reverse())
  end
  
  reversed_string_array.join(" ")
  
  # COLLECT
  string_array_redux = string_sentence.split(" ")
  reversed_string_array_redux = [] 
  
  string_array_redux.collect do |string_redux|
    reversed_string_array_redux.push(string_redux.reverse())
  end
  
  reversed_string_array_redux.join(" ")
  
  #binding.pry
end