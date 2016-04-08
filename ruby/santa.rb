#define class

class Santa
attr_accessor :name, :age, :gender, :ethnicity

  #define instance methods
def initialize(gender, ethnicity)
  @gender = gender
  @ethnicity = ethnicity
puts "Initializing Santa instance"
puts "Santa is #{@gender}, and  #{@ethnicity}"
end


def speak
   puts "Ho, ho, ho! Haaaappy holidays!"
end


def eat_milk_and_cookies(cookie)
  puts "That was a good #{cookie}"
end


def celebrate_birthday(birth_age = 0)
  new_age = birth_age + 1
end

  #define mthod to move bad reindeer to the end
def get_mad_at(name)
  reindeer_ranking =  ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  reindeer_ranking.delete("#{name}")
  reindeer_ranking.push("#{name}") 
p reindeer_ranking  
end

#define method to select random num and assign to age
def rand_age
  r = Random.new
  age = r.rand(0...140)
  @age = age
  puts "Santa is #{age} years old" 
  puts "-------------------------"
end
  end

# santa = Santa.new("it's complicated","Asian")
# santa.celebrate_birthday(22)
# santa.speak
# santa.eat_milk_and_cookies("chocolate chunk")
# santas = []
# p santas
# santas << Santa.new("agender", "black")
# santas << Santa.new("female", "Latino")
# santas << Santa.new("bigender", "white")
# santas << Santa.new("male", "Japanese")
# santas << Santa.new("female", "prefer not to say")
# santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
# santas << Santa.new("N/A", "N/A")

Santa.new("trans", "Native American")
Santa.new("pan-sexual", "Inuit")
santa = Santa.new("test1", "test2")
santa.eat_milk_and_cookies("oreo3")
santa.get_mad_at("Vixen")

p santa.gender
p santa.ethnicity
p santa.celebrate_birthday



g_array = ["male", "female", "gender_fluid", "transgender", "it's complicated"]
e_array = ["white", "black", "asian", "native american", "latin american"]


santa = Santa.new("#{g_array.sample}", "#{e_array.sample}")
 until santa.age == 100 
   santa = Santa.new("#{g_array.sample}", "#{e_array.sample}")
   santa.rand_age
   
 end



  