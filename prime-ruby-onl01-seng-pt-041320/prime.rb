require 'pry'

def prime?(number)
  counter = 2
  
  if counter <= number
    range = (counter... number - 1).to_a
    
    range.none? {|num| number % num == 0}
    #binding.pry
  else
    false
  end
  # binding.pry
  # returns a boolean of whether or not that integer is a prime number
end