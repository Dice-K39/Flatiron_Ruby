def square_array(array)
  # your code here
  new_array = []
  counter = 0
  
  array.each do |squared|
    new_array[counter] = squared * squared
    
    counter += 1
  end
  
  new_array
end

def square_array_with_collect(array)
  array.collect{|squared| squared * squared}
end

array = [1,2,3]

puts square_array(array)

puts square_array_with_collect(array)