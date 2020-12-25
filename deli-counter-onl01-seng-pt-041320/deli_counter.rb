require "pry"

def line(array)
  if array.length == 0
    puts "The line is currently empty."
  else
    new_array = []
    array.each_with_index{|array, index| new_array << " #{index + 1}. #{array}"}
 
    puts "The line is currently:" << new_array.join()
    #binding.pry
  end
end

def take_a_number(array, name)
  if array.length == 0
    array.append(name)
    
    puts "Welcome, #{array[0]}. You are number 1 in line."
  else
    array.append(name)
    
    puts "Welcome, #{array[array.length - 1]}. You are number #{array.length} in line."
  end
end

def now_serving(array)
  if array.length != 0
    puts "Currently serving #{array[0]}."
    array.shift
  else
    puts "There is nobody waiting to be served!"
  end
end