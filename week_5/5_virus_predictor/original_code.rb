# U2.W5: Virus Predictor

# I worked on this challenge by myself

# This program uses state data and calculates the number of deaths and 
# the time a virus will spread in a particular state

# EXPLANATION OF require_relative
# This statement tells the current file that the data on which to run 
# the program/test will be found in another file (which is named)

# The state_data file contains information (including population density, 
# population, regionm and regional_spread) about each state. There are 2 
# different wyntax used here.  One uses hash rockets.  The embedded hashes 
# use colons.

# require_relative 'state_data'   # indicates where to find data

# class VirusPredictor    # defines a class called VirusPredictor


# #  initializes the values of a new instance
#   def initialize(state_of_origin, population_density, population, region, regional_spread)
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#     @region = region
#     @next_region = regional_spread
#   end

# # calls two other methods (predicted_deaths and speed_pf_spread)
# # using instance variables initialized above
#   def virus_effects  #HINT: What is the SCOPE of instance variables?
#     predicted_deaths(@population_density, @population, @state)
#     speed_of_spread(@population_density, @state)
#   end

# # Private restrict how the following methods can be accessed.
# # The can only be accessed from within the current object.
# # If it were cut and pasted above the virus_effects method, the
# # user would not be able to access that method directly using an
# # instance method call.
#   private  #what is this?  what happens if it were cut and pasted above the virus_effects method


# #  this method calculates the predicted number of deaths based on the
# #  data from the state_data file
#   def predicted_deaths(population_density, population, state)
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else 
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end

# #  this method calculates the speed at which the virus spreads
# #  based on the data from the state_data file
#   def speed_of_spread(population_density, state) #in months
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else 
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# end

# Refactored solution w / new feature death-report

require_relative 'state_data'   

class VirusPredictor    

  def initialize(state_of_origin, population_density, population, region, regional_spread)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @region = region
    @next_region = regional_spread
  end

  def virus_effects()  
    predicted_deaths()
    speed_of_spread()
  end

  private  

  def predicted_deaths()
    a = @population_density
    case a
      when a >= 200 then deaths = (@population * 0.4).floor
      when a >= 150 then deaths = (@population * 0.3).floor
      when a >= 100 then deaths = (@population * 0.2).floor
      when a >= 50 then deaths = (@population * 0.1).floor
      else deaths = (@population * 0.05).floor
    end
    print "#{@state} will lose #{deaths} people in this outbreak"
  end

  def speed_of_spread()
    speed = 0.0
    a = @population_density
    case a
      when a >= 200 then speed += 0.5
      when a >= 150 then speed += 1
      when a >= 100 then speed += 1.5
      when a >= 50 then speed += 2
      else speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end

end


def death_report(st_data)
  states = st_data.keys
  for i in 0...states.length
    pop_density = st_data[states[i]][:population_density]
    pop = st_data[states[i]][:population]
    reg = st_data[states[i]][:region]
    reg_spread = st_data[states[i]][:regional_spread]
    report = VirusPredictor.new(states[i], pop_density, pop, reg, reg_spread).virus_effects
  end
  return report
end

death_report(STATE_DATA)

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population], STATE_DATA["Alabama"][:region], STATE_DATA["Alabama"][:regional_spread]) 
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population], STATE_DATA["New Jersey"][:region], STATE_DATA["New Jersey"][:regional_spread]) 
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population], STATE_DATA["California"][:region], STATE_DATA["California"][:regional_spread]) 
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population], STATE_DATA["Alaska"][:region], STATE_DATA["Alaska"][:regional_spread]) 
alaska.virus_effects