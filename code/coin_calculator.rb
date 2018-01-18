require 'httparty'

print "$$ BTC to EUR Calculator $$ \r\n"

while(true)
  print "How much BTC do you got? \r\n"

  n = gets.to_f
  url = "https://api.coinmarketcap.com/v1/ticker/bitcoin/?convert=EUR"

  response = HTTParty.get(url)
  eurPrice = response[0]["price_eur"]
  calculatedPrice = eurPrice.to_f * n

  print "Actual selling price is: "
  print calculatedPrice
  print "\r\n"

  print "Press 'R' for another calculation \r\n"
  break if gets.chomp != "R"
end

