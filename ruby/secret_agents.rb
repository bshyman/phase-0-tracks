puts "Secret agent, would you like to encrypt or decrypt your password?"
option = gets.chomp
puts "Enter password please"
password = gets.chomp

def encrypt (orig_string)
  orig_string.downcase!
  i = 0
  new_string = ""
  
  until i==orig_string.length
    if orig_string[i] == "z"
      new_string += "a"
    elsif orig_string[i] == " "
      new_string += " "
    else
      new_string += orig_string[i].next
    end
    i += 1
  end
  new_string
end

def prev_letter (orig_letter)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  i = alphabet.index(orig_letter) - 1
  alphabet[i]
end

def decrypt (string1)
  string1.downcase!
  i = 0
  new_string2 = ""
  until i==string1.length
    if string1[i] == " "
      new_string2 += " "
    else
      new_string2 += prev_letter(string1[i])
    end
    i += 1
  end
  new_string2
end
  
  if option =="encrypt"
   puts encrypt (password)
  else option == "decrypt"
    puts decrypt (password)
  end
abort("Your data is secure")