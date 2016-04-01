# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

#gsub could essentially be used for every one
p "iNvEsTiGaTiOn".swapcase
 #=> "InVeStIgAtIoN"


p "zom".sub("o", "oo")
 #=> "zoom"


p "enhance".center(20)
#=> "    enhance    "


p "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"


p "the usual ".concat("suspects")
#=> "the usual suspects"


p" suspects".sub(" ", "the usual ")
#=> "the usual suspects"


p "The case of the disappearing last letter"[0..-2]
 #=> "The case of the disappearing last lette"


 p "The mystery of the missing first letter"[1..-1]
#=> "he mystery of the missing first letter"


p "Elementary  ,    my   dear      Watson!".squeeze(" ").sub(" ,", ",")
# => "Elementary, my dear Watson!"


p "z".ord
 #=> 122 
# (What is the significance of the number 122 in relation to the character z?)
#ASCII letter code


p "How many times does the letter ‘a’ appear in this string?".count("a")
#=> 4
