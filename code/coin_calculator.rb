require 'httparty'

print "$$$$ BTC TO EUR Calculator $$$$ \r\n"
print "How much BTC do you got? \r\n"
n = gets.to_i

url = "https://api.coinmarketcap.com/v1/ticker/bitcoin/?convert=EUR"
response = HTTParty.get(url)
parsedResponse =  response.parsed_response
eurPrice = parsedResponse[0]["price_eur"]

calculatedPrice = eurPrice.to_f * n

print "Actuall selling price is: "
print calculatedPrice
print "\r\n"