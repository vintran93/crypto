class HomeController < ApplicationController

  def index
    require 'net/http'
    require 'json'
    @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=3faaac7a-4b4d-44d3-9001-1cb1e966e9ce'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @coins = JSON.parse(@response)
    #@my_coins = @coins.values
    #@my_coins = @coins.values[1][0..99]
    #@coins['symbol']
    @my_coins = ["BTC", "ETH", "SHIB", "MANA", "CRO"]
    
    #@my_coins = ["symbol"][0-141]
    # ['symbol'][0-141]
    #["BTC", "ETH", "SHIB", "MANA", "CRO"]
    # ['cmc_rank'][1-100]
  end

  def about
  end

  def search
    require 'net/http'
    require 'json'
    @url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY=3faaac7a-4b4d-44d3-9001-1cb1e966e9ce'
    @uri = URI(@url)
    @response = Net::HTTP.get(@uri)
    @search_coin = JSON.parse(@response)
    
    @symbol = params[:sym] 
    if @symbol
      @symbol = @symbol.upcase
    end

    if @symbol == ""
      @symbol = "Please enter a cryptocurrency to search."
    end

  end
end
# HRLkWCpah_8eVXGba6Re_14KXPdgiT5L
# https://api.polygon.io/v2/aggs/ticker/AAPL/range/365/day/2020-06-01/2020-06-17?apiKey=HRLkWCpah_8eVXGba6Re_14KXPdgiT5L

# alpha vantage key: 84RSKBDP3AKHB5M4