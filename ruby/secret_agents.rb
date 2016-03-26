def prev_letter (orig_letter)
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  i = alphabet.index(orig_letter) - 1
  alphabet[i]
end

def decrypt (string1)
  i = 0
  new_string2 = ""
  until i==string1.length
    new_string2 += prev_letter(string1[i])
    i += 1
  end
  puts new_string2
end
  





def encrypt (orig_string)
  i = 0
  new_string = ""
  
  until i==orig_string.length
    if orig_string[i] == "z"
      new_string += "a"
    else
      new_string += orig_string[i].next
    end
    i += 1
  end
  puts new_string

end


encrypt ("afe")
encrypt ("zed")
decrypt ("bcd")

decrypt ("afe")
