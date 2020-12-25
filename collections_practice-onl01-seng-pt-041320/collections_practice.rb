def sort_array_asc(int_array)
  int_array.sort {|num1, num2| num1 <=> num2}
  
  #int_array.sort
  
=begin
  int_array.sort do |num1, num2|
    if num1 == num2
      0
    elsif num1 < num2
      -1
    elsif num1 > num2
      1
    end
  end
=end
end

def sort_array_desc(int_array)
  int_array.sort {|num1, num2| num2 <=> num1}

=begin
  int_array.sort do |num1, num2|
    if num1 == num2
      0
    elsif num1 < num2
      1
    elsif num1 > num2
      -1
    end
  end
=end
end

def sort_array_char_count(string_array)
  string_array.sort {|string1, string2| string1.length <=> string2.length}
end

def swap_elements(swaping_array)
  swaping_array[1], swaping_array[2] = swaping_array[2], swaping_array[1]
  
=begin  
  swap1 = ""
  swap2 = ""
  
  swap1 = swaping_array[1]
  swap2 = swaping_array[2]
  swaping_array[1] = swap2
  swaping_array[2] = swap1
=end  
  swaping_array
end

def reverse_array(int_array)
  int_array.reverse()
end

def kesha_maker(strings_array)
  new_strings_array = []
  
  strings_array.each do |word|
    split_word = word.split("")
    split_word[2] = "$"
    new_strings_array << split_word.join
  end
  
  new_strings_array
end

def find_a(strings_array)
  strings_array.select {|word| word.start_with?("a")}
end

def sum_array(int_array)
  int_array.inject{|sum, int| sum + int}
end

def add_s(strings_array)
  strings_array.each_with_index.collect do |word, index|
    if index == 1
      word
    else
      word + "s"
    end
  end
end