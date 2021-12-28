require 'faraday'
require 'json'


# call the Gemini API with faraday
symbols = JSON.parse(Faraday.get('https://api.gemini.com/v1/symbols').body)
pp symbols

puts "please type in a symbol"

current_symbol = gets.chomp

orderbook = JSON.parse(Faraday.get("https://api.gemini.com/v1/book/#{current_symbol}").body)
pp orderbook
