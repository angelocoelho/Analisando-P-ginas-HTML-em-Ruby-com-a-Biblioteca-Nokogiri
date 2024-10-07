require 'nokogiri'

require 'net/http'


https = Net::HTTP.new('example.com', 443)



https.use_ssl = true


response = https.get("/")



body_response = Nokogiri::HTML(response.body)

result = body_response.at('p')

puts result.content