class Santa
reindeer_ranking =  ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
age = 0
def initialize(gender, ethnicity)
	@gender = gender
	@ethnicity = ethnicity
puts "Initializing Santa instance"
p "#{@gender}, #{@ethnicity}"
end

def speak
	 puts "Ho, ho, ho! Haaaappy holidays!"

end


def eat_milk_and_cookies(cookie)
	puts "That was a good #{cookie}"
end




end

santa = Santa.new("test1","test2")

santa.speak
santa.eat_milk_and_cookies("chocolate chunk")

santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not to say")
santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
santas << Santa.new("N/A", "N/A")


Santa.new("trans", "Native American")
Santa.new("pan-sexual", "Inuit")




