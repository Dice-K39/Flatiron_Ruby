require 'pry'

def roll_call_dwarves(dwarf_names_array)
  dwarf_names_array.each_with_index{|dwarf, index| puts "#{index + 1}. #{dwarf} "}
end

def summon_captain_planet(planeteer_calls_array)
  planeteer_calls_array.map{|calls| "#{calls.capitalize()}!"}
end

def long_planeteer_calls(long_planeteer_calls_array)
  long_planeteer_calls_array.any?{|calls| calls.size() > 4}
end

def find_the_cheese(food_array)
  # the array below is here to help
  cheese_types = ["cheddar", "gouda", "camembert"]
  counter = 0
  
  while counter < food_array.length
    return cheese_types[counter] if food_array.include?(cheese_types[counter])
    
    counter += 1
  end
  
  #binding.pry
end