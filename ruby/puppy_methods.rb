class Puppy

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

  end

puppy = Puppy.new

puppy.fetch("ball")
puppy.speak(3)


