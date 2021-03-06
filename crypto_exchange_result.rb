class CryptoExchangeResult 
  attr_accessor :bids, :asks

  def initialize
    yield self if block_given?
  end

  def max_bid
    bids.max
  end

  def min_ask
    asks.min
  end

end
