# Design a politician that accepts 3 attributes - age, gender, political party
# politican can do three things - lie, cheat and steal
# steal will accept an amount attribute
# lie will recieve an attribute of the actual lie

class Politician
    attr_reader :name, :amount, :party
  
  def initialize(name, amount, party)
    @name = name
    @amount = amount
    @party = party
    
  end
  
  def lie
    puts "I am NOT a crook!"
  end
  
  def steal(loot)
    puts "#{@name} received a bonus of $#{loot} in case thier salary of $#{@amount} per year wasn't sufficient"
  end
  
  def print
    return "The #{@party} candidate #{@name} only stole $#{@amount} from taxpayers this year"
  end
end


#### Driver Code
# poli = Politician.new("ted cruz", 40000, "repubber")
# poli.lie
# poli.print
# poli.steal(45)
# p poli.name
# p poli.amount
# p poli.party




# Create a loop that will initialize class with user input and store results in array
array1 = []
name = nil
	
until name == "exit" do
  puts "Great! Another politician. Just what we need."
  puts "Tell me a little more about yourself or type 'exit'"
  puts " "
  puts "What's your name?"
  name = gets.chomp
  	
  	if name != "exit" 
  		puts "How much did you earn this year?"
  		amount = gets.chomp
		amount.to_s
  		puts "What is your political affiliation?"
  		party = gets.chomp
  		puts " "
  		array1 << Politician.new(name, amount, party)
    else
  		puts "I see you've had enough corruption for one day"
  		puts " "
  end
end

#Create loop that will print each slot in array (pretty)
puts "Press enter to see all the wonderful folks we met today"
input = gets.chomp

if input != 999999999999999 
	array1.each do |politico|
		p politico.print
	end
end

	

    

