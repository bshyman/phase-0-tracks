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
