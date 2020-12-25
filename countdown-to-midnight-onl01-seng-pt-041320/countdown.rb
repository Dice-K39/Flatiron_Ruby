#write your code here
counter = 10

def countdown(counter)
  while counter > 0 do
    puts "#{counter} SECOND(S)!"
    
    counter -= 1
  end
  
  "HAPPY NEW YEAR!"
end

counter = 5

def countdown_with_sleep(counter)
  while counter > 0 do
    puts "#{counter} SECOND(S)!"
    
    sleep(1)
    
    counter -= 1
  end
  
  "HAPPY NEW YEAR!"
end