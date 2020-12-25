def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  array.collect{|names| "Hello, my name is #{names}."}
end

def assign_rooms(array)
  message = []
  
  array.each_with_index {|name, index| message[index] = "Hello, #{name}! You'll be assigned to room #{index + 1}!"}
  
  message
end

def printer(attendees)
  
  batch_badge_creator(attendees).each do |name|
    puts name
  end
  
  assign_rooms(attendees).each do |room|
    puts room
  end
end