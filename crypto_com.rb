require 'faraday'
require 'json'


# call the Gemini API with faraday
symbols = JSON.parse(Faraday.get('https://api.crypto.com/v2/public/get-instruments').body)
pp symbols

puts "please type in a symbol"

current_symbol = gets.chomp

orderbook = JSON.parse(Faraday.get("https://api.crypto.com/v2/public/get-book?instrument_name=#{current_symbol}").body)
pp orderbook
