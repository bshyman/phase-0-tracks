<<<<<<< HEAD
#object is to determine if a user is a vampitre based on input criteria
=begin
puts "How many users will be processed?"
num_users = gets.chomp.to_i


num_users.times do
=======
#object is to determine if a user is a vampire based on input criteria

puts "How many users will be processed?"
num_users = gets.chomp.to_i
num_users.times do

>>>>>>> 7c100101b6658fa57f927c8b0a7368c34518f49c
puts "Whats is your name?"
name_var = gets.chomp

puts "How old are you?"
age = gets.chomp
age = age.to_i

puts "What year were you born?"
birth_year = gets.chomp
birth_year = birth_year.to_i
current_year = Time.new.year

puts "Our company cafeteria serves garlic bread. Should we order some for you?"
g_bread = gets.chomp

puts "Would you like health insurance?"
ins_var = gets.chomp


current_year = Time.new.year
=end
puts "Do you have any allergies? Please list an allergy and press enter. If you have listed all your allergies, please type done and press enter"

allergy = ""
allergy = gets.chomp
if allergy != ("sunshine" || "done")
  puts "please list your next allergy or type done"
redo unless allergy == "sunshine" || "done"
elsif
  allergy == "sunshine"
  puts "vamp!!"
elsif 
  allergy == "done"
else
  puts "next"
  allergy = gets.chomp
end

=begin
case  
  when allergy == "sunshine"
    puts "You are def a vamp!"
  when current_year-age==birth_year && g_bread == "yes" && ins_var == "yes" && name_var == ("Drake Cula" || "TuFang")
  puts "You are def a vamp!!!"
  when current_year-age==birth_year && ((g_bread == "yes") || (ins_var == "yes"))
    puts "You are prob not a vamp"
  when (current_year-age!=birth_year) && (g_bread == "no") && (ins_var == "no")
    puts "You are almost def a vamp!"
  when current_year-age!=birth_year &&((g_bread == "no") || (ins_var == "no"))
    puts "You are probably a vamp"
  else
    puts "Results inconclusive"
end

puts "You are #{name_var}, #{age} years old, born in #{birth_year}."
puts "When asked if you were interested in garlic bread or health insurance, your answers were #{g_bread} and #{ins_var}, respectively."

end
=end
=======
puts "Do you have any allergies? Please list an allergy and press enter. If you have listed all your allergies, please type done and press enter"
allergy = gets.chomp


 
	loop do 
		puts "please list your next allergy or type done"
		allergy = gets.chomp
	 		if allergy == "sunshine" 
	 		 	break
	 		elsif allergy == "done"
	 			puts "thank you"
	 			break
	 		end
  	end

	if allergy != "sunshine"
		case  
    		when current_year-age==birth_year && g_bread == "yes" && ins_var == "yes" && name_var == ("Drake Cula" || "TuFang")
  				puts "You are def a vamp!!!"
  			when current_year-age==birth_year && ((g_bread == "yes") || (ins_var == "yes"))
    			puts "You are prob not a vamp"
  			when (current_year-age!=birth_year) && (g_bread == "no") && (ins_var == "no")
    			puts "You are almost def a vamp!"
  			when current_year-age!=birth_year &&((g_bread == "no") || (ins_var == "no"))
    			puts "You are probably a vamp"
  			else
    			puts "Results inconclusive"
    		end
	else
		puts "Vammmmmp"
	end

puts "You are #{name_var}, #{age} years old, born in #{birth_year}."
puts "When asked if you were interested in garlic bread or health insurance, your answers were #{g_bread} and #{ins_var}, respectively."
end

abort("Actually, never mind! What do these questions have to do with anything? Let's all be friends.")



