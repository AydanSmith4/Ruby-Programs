require 'twitter'
account = Twitter::REST::Client.new do |config|
    config.consumer_key = "Consumer Key" #put in your personal consumer key
    config.consumer_secret = "Consumer Secret" #put in your personal consumer secret key
    config.access_token = "Access Token" #put in your personal access token
    config.access_token_secret = "Access Token Secret" #put in your personal access token secret
end
account.update("My First Tweet Using the Ruby Program!")
