# Test der Quersumme
# ruby ~/Dropbox/FOM/Semester\ 5/Betriebssysteme/Romeyke/code/app.rb

require_relative 'qs.rb'
# https://github.com/njh/ruby-mqtt
require 'mqtt'

print "Which number? - "
n = gets.to_i

puts "Die Quersumme von #{n} ist #{n.quersumme}"