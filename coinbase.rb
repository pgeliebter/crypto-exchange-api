require 'faraday'
require 'json'

# get trading pairs for coinbase
symbols = JSON.parse(Faraday.get('https://api.exchange.coinbase.com/products').body)
pp symbols

puts "please type in a symbol"

# symbol is in the form of "BTC-USDT" or "ETH-BTC" or "ETH-USD"
current_symbol = gets.chomp

# call the coinbase api with 
response = Faraday.get("https://api.exchange.coinbase.com/products/#{current_symbol}/book?level=2")

pp JSON.parse(response.body)