require 'faraday'
require 'json'

# call the Binance.us api with faraday
response = Faraday.get("https://api.binance.us/api/v3/depth?symbol=#{BTCUSDT}&limit=20")
pp JSON.parse(response.body)