def iteration 
    3.times {yield}
end

puts "We haven't run a block yet."
puts iteration {"hi"}
puts "Now we ran a block."

array1 = []
hash1 = {}

array1 = ["action", "horror", "drama", "comedy"]

hash1 = {
  "Top_gun" => "Tom Cruise",
  "The_Revenant" => "Leo",
  "Goodfellas" => "Joe Pesci",
  "The_Notebook" => "Rachel McAdams",
  }

p array1
array1.each do |genre|
  puts genre
end
p array1

array1.map! do |genre|
  genre.capitalize
end

p array1
p hash1

hash1.each do |movie, actor|
  puts actor + " is in " + movie
end

p hash1


#Release 2 - Question 1
array2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p array2
array2.delete_if{|item| item == 2}
p array2

hash2 = {
  1 => "a",
  2 => "b",
  3 => "c",
  4 => "d",
  5 => "e",
  6 => "f",
  7 => "g",
  8 => "h"
  }
hash2.delete_if{|number, letter| number <= 2}
p hash2

#Release 2 question 2
array2.keep_if{|item| item <= 4}
p array2

hash2.keep_if {|number, letter| number >= 5 }
p hash2

#Release 2 question 3

p array2.include?(3)
p array2.index{|number| number == 1}
p hash1.each_pair {|movie, actor| puts "#{actor} is in #{movie}"}

#Release 2 question 4
array2.push(5,6,7)
array2 = array2.take_while {|number| number < 5}
p array2

p hash2
hash2.reject!{|numbers, letters| numbers < 6}
p hash2



