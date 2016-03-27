#object is to determine if a user is a vampitre based on input criteria
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
current_year = current_year.to_i

case  
  when current_year-age==birth_year && (g_bread == "yes" || ins_var == "yes")
  puts "Prob not a vamp"
  when current_year-age!=birth_year && (g_bread == "no") || (ins_var == "no")
  puts "Probably a vamp"
  when (current_year-age!=birth_year) && (g_bread == "no") && (ins_var == "no")
  puts "Almost def a vamp!"
  when (current_year-age==birth_year && (g_bread == "yes" || ins_var == "yes")) &&  (name_var == ("Drake Cula" || "Tu Fang")) 
  puts "Def a vamp!!!"
  
  else
  	puts "Results inconclusive"
end




 



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