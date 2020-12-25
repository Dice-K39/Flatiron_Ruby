require 'pry'
class Anagram
    attr_accessor :word

    def initialize(word)
        @word = word
    end

    # split word into individual characters
    # start iteration
    # split each word in array into individual characters to compare with word characters
    def match(array_of_words)
        split_word = @word.split("")
        words_matched = []
        
        array_of_words.each do |words|
            split_words_of_array = words.split("")
            if split_word.sort == split_words_of_array.sort
                words_matched << words
                #binding.pry
            end
            #binding.pry
        end
        #binding.pry
        words_matched
    end
end