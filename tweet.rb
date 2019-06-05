require 'twitter'
account = Twitter::REST::Client.new do |config|
    config.consumer_key = "TpMv0IhUVywLSo7hTyhOl6p2J"
    config.consumer_secret = "zz0ULXqxeXP8X01DAc2ZkUeHY0nPjSDTY6mhTsCky1nzWvzmDC"
    config.access_token = "1135975454018588677-SKkzoW05Y30hlBzF1CYpoJIKUCEDX1"
    config.access_token_secret = "jfQErSSMeKv25iPO4lFQqaoiR0kVHOXtLgV07YuFYVl1i"
end
account.update("Finally!!!!")