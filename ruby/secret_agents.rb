=begin
  We deleted all our original pseudocode when trying to clean up our actual code. The driver code is still in place. Our plan was to make two different methods, 1 for encryption and 1 for decryption. The encryption would use .next to take input and advnace each letter by 1 letter. The decryption essentially would do the opposite. Being as .next does not apply to going backwards, we wrote a method to subtract 1 value from each input letter. After the method code, you can see the execution and printing the results
=end

puts "Secret agent, would you like to encrypt or decrypt your password?"
option = gets.chomp
puts "Enter password please"
password = gets.chomp

#encrypt input pw by advancing each letter 1 letter
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

#wrote method to function as opposite of .next
def prev_letter (orig_letter)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  i = alphabet.index(orig_letter) - 1
  alphabet[i]
end

#decrypt input passwords to go back 1 letter in the alphabet
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

encrypt("abc")
encrypt("zed")
decrypt("bcd")
decrypt("afe")
decrypt(encrypt("The duck flies at midnight"))
#this works because we have defined both methods previously and accounted for spaces
  
  #executes methods and prints results
  if option =="encrypt"
   puts encrypt (password)
  else option == "decrypt"
    puts decrypt (password)
  end
abort("Your data is secure")