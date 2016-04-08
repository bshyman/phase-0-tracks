class Santa
attr_accessor :name, :age, :gender, :ethnicity

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


def celebrate_birthday(age = 0)
	age += 1
end


def get_mad_at(name)
	reindeer_ranking =  ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
	reindeer_ranking.delete("#{name}")
	reindeer_ranking.push("#{name}") 
end
end
 
santa = Santa.new("it's complicated","Asian")
santa.celebrate_birthday(22)
santa.speak
santa.eat_milk_and_cookies("chocolate chunk")
# santas = []
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

Santa.new("trans", "Native American")
Santa.new("pan-sexual", "Inuit")

santa.eat_milk_and_cookies("oreo3")
santa.get_mad_at("Vixen")

p santa.gender
p santa.ethnicity
p santa.celebrate_birthday


	