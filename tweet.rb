require 'twitter'
account = Twitter::REST::Client.new do |config|
    config.consumer_key = "Consumer Key"
    config.consumer_secret = "Consumer Secret"
    config.access_token = "Access Token"
    config.access_token_secret = "Access Token Secret"
end
account.update("My First Tweet Using the Ruby Program!")
