# Design a politician that accepts 3 attributes - age, gender, political party
# politican can do three things - lie, cheat and steal
# steal will accept an amount attribute
# lie will recieve an attribute of the actual lie

class Politician
	attr_accessor :age
	attr_reader :gender, :party
	def initialize(age, gender, party)
		@age = age
		@gender = gender
		@party = party

	end
end