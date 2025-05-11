require "http/client"
require "json"

api_key = "YOUR_API_KEY"
url = "https://v6.exchangerate-api.com/v6/#{api_key}/latest/USD"

response = HTTP::Client.get(url)
data = JSON.parse(response.body)
uzs = data["conversion_rates"]["UZS"].to_f

puts "1 USD = #{uzs} UZS"
