require 'pry'
def starts_with_a_vowel?(word)
  #binding.pry
  if word.match(/\b[aeiou]/i) == nil
    false
    #binding.pry
  else
    true
    #binding.pry
  end
  #binding.pry
end

def words_starting_with_un_and_ending_with_ing(text)
  text.scan(/\bun\w+ing\b/)
end

def words_five_letters_long(text)
  text.scan(/\b\w{5}\b/)
end

def first_word_capitalized_and_ends_with_punctuation?(text)
  if text.match(/^[A-Z].*\.$/) == nil
    false
  else
    true
  end
end

def valid_phone_number?(phone)
  if phone.match(/\(?([0-9]{3})\)?([ -]?)([0-9]{3})([ -]?)([0-9]{4})/) == nil
    false
  else
    true
  end
end
