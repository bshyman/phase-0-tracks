# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#Require relative tells this file that to run the code it contains, it will need data located in another file
#requre_relative tells this file where to look for the missing data
#require does the same thing but require_relative makes it easier to point to a file in a different directory

# #HASHY-HASH explanation
# state_data is a hash consisting of individual states as the keys. Each value is a hash with 2 key-value pairs. 
# the keys are population_density and population respectively.

require_relative 'state_data'

class VirusPredictor


#The initialize method is what is rub automatically when a new instance of a class is called. It typically accepts arguments and defines te as variables
#and what their given scopes are
# and accepts arguments pertinent to the class well. It can also be used to run methods when new instances of a class are called

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density

  end

#virus effects when called, runs two other methods - predicted_deaths and speed_of_spread. Thos methods take arguments but virus_effect does not
   def virus_effects 
    puts "#{predicted_deaths} #{speed_of_spread} "
   end
  

private  

#predicted deaths calculates the number of deaths based on a calculation of the population variable.
# the population density value for the state key will determine which #if statement gets called. If the population density for #state is 49 or under,
#else would get executed. The method then outputs the result in a complete sentence WITHOUT starting a new line afterwards
  def predicted_deaths
    # predicted deaths is solely based on population density
    speed = 0
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
       print "#{@state} will lose #{number_of_deaths} people in this outbreak "
    
  end
#speed_of_spread method calculates how quickly the outbreak will spread based on population density for the given state
# the greater the population density the quicker the outbreak will spread
# this method then outputs it's results and completes the sentence from the #predicted_deaths output
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end
##Write a method that will iterate through each state and output outbreak results
def self.all_states
    STATE_DATA.each do |k, v|
    k = VirusPredictor.new("#{k}", STATE_DATA["#{k}"][:population_density], STATE_DATA["#{k}"][:population])
    k.virus_effects
         end
  end
end

#=======================================================================

######DRIVER CODE#####
 alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
alaska.predicted_deaths
alaska.speed_of_spread
p STATE_DATA["Maine"]
p STATE_DATA["Maine"][:population_density].class

VirusPredictor.all_states
#=======================================================================
# Reflection Section
=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
Both hash rockets and the colon are used and function the same way. 

What does require_relative do? How is it different from require?
  require_relative links to data in a different file in the same working directory whereas with 'require' you can specify a differetn directory.

What are some ways to iterate through a hash?
  There are a few ways to iterate through a hash inclunding .each, .each_key, .each_pair and other #each methods. 
  Also #times could be used or #select or #length when set to the number of items or a few others

When refactoring virus_effects, what stood out to you about the variables, if anything?
  Since the variables were instance variables, arguments on the methods were redundant

What concept did you most solidify in this challenge?
  self
=end