# Sending an HTTP GET request
require 'open-uri'

url = "https://learn-co-curriculum.github.io/json-site-example/"
uri = URI.parse(url)

# request_result = uri.open
# request_result.string
#uri.open.string

# Reading the Body of a Response
require 'net/http'
require 'json'
require 'awesome_print'

response = Net::HTTP.get_response(uri)

response.body

url = "https://learn-co-curriculum.github.io/json-site-example/endpoints/locations.json"
uri = URI.parse(url)

response = Net::HTTP.get_response(uri)
ap JSON.parse(response.body)