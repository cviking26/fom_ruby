require 'httparty'

print "$$ BTC to EUR Calculator $$ \r\n"
print "How much BTC do you got? \r\n"

n = gets.to_f
url = "https://api.coinmarketcap.com/v1/ticker/bitcoin/?convert=EUR"

response = HTTParty.get(url)
parsedResponse =  response.parsed_response
eurPrice = parsedResponse[0]["price_eur"]

calculatedPrice = eurPrice.to_f * n

print "Actual selling price is: "
print calculatedPrice
print "\r\n"