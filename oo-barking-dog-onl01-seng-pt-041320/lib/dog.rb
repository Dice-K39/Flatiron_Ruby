class Dog
  def name=(name)
    @dogs_name = name
  end
  
  def name
    @dogs_name
  end
  
  def bark
    puts "woof!"
  end
end