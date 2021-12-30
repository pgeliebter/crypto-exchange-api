require 'faraday'
require 'json'
require './crypto_exchange_result'
require 'pry'

# get trading pairs for binance.us
# symbols = JSON.parse(Faraday.get('https://api.binance.us/api/v3/exchangeInfo').body)['symbols']
# pp symbols

# puts "please type in a symbol"

# symbol is in the form of "BTCUSDT" or "ETHBTC" or "ETHUSD"
# current_symbol = gets.chomp

# call the Binance.us api with faraday

response = JSON.parse(Faraday.get("https://api.binance.us/api/v3/depth?symbol=BNBUSD&limit=20").body)

result = CryptoExchangeResult.new do |r|
  r.bids = response["bids"].map { |bid| bid[0].to_f }
  r.asks = response["asks"].map { |ask| ask[0].to_f }
end
pp result