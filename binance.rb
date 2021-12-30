require 'faraday'
require 'json'

# get trading pairs for binance.us
symbols = JSON.parse(Faraday.get('https://api.binance.us/api/v3/exchangeInfo').body)['symbols']
pp symbols

puts "please type in a symbol"

# symbol is in the form of "BTCUSDT" or "ETHBTC" or "ETHUSD"
current_symbol = gets.chomp

# call the Binance.us api with faraday
response = Faraday.get("https://api.binance.us/api/v3/depth?symbol=#{current_symbol}&limit=20")

pp JSON.parse(response.body)