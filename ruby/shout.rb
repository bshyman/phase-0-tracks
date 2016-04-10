module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end
	def self.yell_happily(number)
		number.times do
			puts "AHHH HAPPY AHHH!!!!"
		end
	end

end

p Shout.yell_angrily("argghhh")
Shout.yell_happily(5)