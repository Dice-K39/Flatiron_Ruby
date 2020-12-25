def my_collect(collection)
  counter = 0
  stuff = []
  
  while counter < collection.length
    stuff[counter] = yield(collection[counter])
    
    counter += 1
  end
  
  stuff
end