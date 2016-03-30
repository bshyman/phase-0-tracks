#object is to determine if a user is a vampitre based on input criteria
=begin
puts "How many users will be processed?"
num_users = gets.chomp.to_i


num_users.times do
puts "Whats is your name?"
name_var = gets.chomp
puts "How old are you?"
age = gets.chomp
age = age.to_i
puts "What year were you born?"
birth_year = gets.chomp
birth_year = birth_year.to_i

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

 



=begin
if (current_year - age =birth_year) && g_bread == "yes" 
  puts "Prob not a vamp"
else
  puts "Vamp!"
end
  
puts current_year
=end
=begin
wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false
wolves_like_garlic && wolves_like_sunshine
wolves_like_garlic || vampires_like_garlic
wolves_like_garlic && vampires_like_garlic
wolves_like_garlic && (vampires_like_sunshine || vampires_like_garlic)
(wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine
vampires_like_garlic
!vampires_like_garlic
!(wolves_like_sunshine && wolves_like_garlic)
=end
 



=begin
http://stackoverflow.com/questions/21761475/ruby-case-when-vs-if-elsif
if customerName == "Fred"
      print "Hello Fred!"
elsif customerName == "John"
      print "Hello John!" 
elsif customername == "Robert"
      print "Hello Bob!"
end

if (current_year - age =birth_year) && g_bread == "yes" 
  puts "Prob not a vamp"
else
  puts "Vamp!"
end
  
puts current_year
=end

=begin
wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false
wolves_like_garlic && wolves_like_sunshine
wolves_like_garlic || vampires_like_garlic
wolves_like_garlic && vampires_like_garlic
wolves_like_garlic && (vampires_like_sunshine || vampires_like_garlic)
(wolves_like_garlic && vampires_like_garlic) || wolves_like_sunshine
vampires_like_garlic
!vampires_like_garlic
!(wolves_like_sunshine && wolves_like_garlic)
=end