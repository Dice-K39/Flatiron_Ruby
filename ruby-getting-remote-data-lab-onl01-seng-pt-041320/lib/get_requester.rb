# Write your code here
require 'net/http'
 require 'open-uri'
 require 'json'
 require 'pry'

class GetRequester
    attr_reader :uri

    def initialize(url)
        @uri = URI.parse(url)
        #binding.pry
    end

    def get_response_body
        response = Net::HTTP.get_response(self.uri)
        response.body
        #binding.pry
    end

    def parse_json
        json_parsed = JSON.parse(self.get_response_body)
        #binding.pry
    end
end