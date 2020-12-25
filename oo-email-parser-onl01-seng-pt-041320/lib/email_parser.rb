require 'pry'
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :email

    def initialize(email_string)
        @email = email_string
    end

    def parse
        email_array = @email.split(/[,\s]/).uniq
        email_array.reject{|element| element.empty?}
        #binding.pry
        
    #     email_array = []
    #     if @email.include?(",")
    #         email_array = @email.split(",")
    #         email_string = email_array.join
    #         if email_string.include?(" ")
    #             email_array_again = email_string.split(" ")
    #             email_array = email_array_again
    #             #binding.pry
    #         end
    #     else
    #         email_array = @email.split(" ")
    #     end
    # # Returns new array by removing duplicate values in self
    # email_array.uniq  
              
        
    end
end