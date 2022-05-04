require "json"
require "open-uri"
# require "nokogiri"

url = "https://petstore.swagger.io/v2/pet/findByStatus?status=available"

user_serialized = URI.open(url).read
user = JSON.parse(user_serialized)
p "Number of pets = #{user.count}"
