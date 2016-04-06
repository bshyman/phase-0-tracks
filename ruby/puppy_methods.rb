#Create class
class Puppy
#Define five instance methods for puppy actions
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(number)
      number.times do
        puts "Woof!"
      end
  end
  
  def roll_over
    puts "*rolls over*"
  end

# roll_over

  def dog_years(dog_age)
    human_age = dog_age * 7
    puts human_age
  end

# dog_years(5)

  def play_dead(seconds)
    puts "The dog plays dead for #{seconds} seconds."
  end

# play_dead(30)
  
#Definte initialize method
  def initialize 
    puts "initializing new puppy instance..."
  end

end

#Create a new class instance and test instance methods
puppy = Puppy.new

puppy.fetch("ball")
puppy.speak(3)


#Create class
class Cell
#Create new class methods
  def initialize
    puts " initializing new cell instance"
  end

  def make_call(phone_number)
    puts "Dial #{phone_number}"
  end

  def send_text(message)
    p "Send #{message}"
    return "Send #{message}"
    
  end
  
end 

#Create a loop to run 50 instances of our class
array1 = []
50.times do
  instance = Cell.new
   array1 << instance
end

#Iterate over array elements and call instance methods
array1.each do |instance|
  instance.make_call("867-5309")
  instance.send_text("Bye Felica")
end

#Testing instance methods
cell = Cell.new

cell.make_call(666)
cell.send_text("bye")

