# get all client information and store it
puts "Please enter first name"
firstname = gets.chomp.capitalize!
puts "please enter last name"
lastname = gets.chomp.capitalize!
puts "What is your age?"
age = gets.chomp.to_i
puts "How many children do you have?"
children = gets.chomp.to_i
puts "What is your decor preference?"
decor = gets.chomp
puts "What is your favorite color?"
color = gets.chomp
puts "Do you like art?"
art = gets.chomp

#create hash, create keys and assign user input to values
design_hash = {
	:name => "#{firstname} #{lastname}",
	:age => "#{age}",
	:children => "#{children} children",
    :decor => "#{decor}",
	:color => "#{color}",
	:art => "#{art}"
}

#pprint results and ask user if corrections are needed?
#Based on user inout, exit program or update values and exit
p design_hash
puts"Does this information look correct?"
verify = gets.chomp
if verify == "yes"
	puts"Great, thanks!"
else
	puts "Which would you like to edit?"
	old_val = gets.chomp.to_sym
	puts"Please type your updated response"
	new_val = gets.chomp.to_sym
end

design_hash[old_val] = new_val
p design_hash



	