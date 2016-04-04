

puts "Please enter your first and last name"
name = gets.chomp
name = name.downcase
name = name.split(' ')
p name.class
#name = name.reverse
name = name.join(" ")
name = name.chars
p name


name.map do |letter|
	consonants = "bcdfghjklmnpqrstvwxyz"
	consonants = consonants.split(' ')
		if consonants.include?(letter)
			new_name = Array.new
			new_name << next_con("#{letter}")
		elsif
			vowels.has_key?(letter) 
			new_name << next_vowel("#{letter}")
			p name
			p new_name
		else 
			puts "name please"
		end	
end

p new_name

def next_vowel letter
	vowels = {
		"a" => "e",
		"e" => "i",
		"i" => "o",
		"o" => "u",
		"u" => "a"
		}
return letter.sub(letter, vowels["#{letter}"])	
end				

def next_con letter
	consonants = "bcdfghjklmnpqrstvwxyz"
	index = consonants.index("#{letter}")
	index +=1
	return consonants[index]
end

p @new_name

spy_name

		

















