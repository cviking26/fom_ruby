# berechnet eine Quersumme

class Integer
	def quersumme
		sum = 0
		self.to_s.each_char{ |c| sum += c.to_i }
		return sum
	end
end
