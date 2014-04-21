# U2.W6: Create a Car Class from User Stories

# I worked on this challenge [Jon Pabico, Chris Aubuchon, Hunter Chapman].

# 2. Pseudocode

# create a car class that operates as a video game
# create new car with model and color
# define distance to drive 
# define speed
# methods to make r and l turns
# change speed
# track distance traveled
# method stop
# create variable for last action
# last action variable push to last action array
# 
# car attributes:
# model
# color
# speed
# last_action
# total_distance
#
# car functions:
# drive distance @ speed
# set speed
# turn left / right
# stop = speed 0


# 3. Initial Solution

# Logic Section
# *Initial*

# class Car
  
#   attr_accessor :speed
#   attr_accessor :color
#   attr_accessor :model
#   attr_accessor :type
#   attr_accessor :list_actions
#   attr_accessor :last_action
#   attr_accessor :total_distance
  
#   def initialize(model, type, color)
#     @model = model
#     @type = type
#     @color = color
#     @speed = 0
#     @list_actions = []
#     @last_action = @list_actions.last
#     @total_distance = 0
#   end
 
#   def drive(distance, speed)
#     @last_action = "You drove #{distance} miles at #{speed} MPH."
#     @list_actions << @last_action
#     @total_distance += distance
#     @speed = speed
#   end
  
#   def set_distance(distance)
#     @last_action = "You drove #{distance} miles."
#     @list_actions << @last_action
#     @total_distance += distance
#   end
  
#   def set_speed(speed)
#     @last_action = "Speed: #{speed}"
#     @list_actions << @last_action
#     @speed = speed
#   end
  
#   def turn(direction)
#     @last_action = "You turned #{direction}"
#     @list_actions << @last_action
#     puts "You turned #{direction}"
#   end
  
#   def stop
#     @last_action = "You stopped."
#     @list_actions << @last_action
#     @speed = 0
#   end
  
# end  

# Logic Section
# 4. Refactored Solution

class Car
  
  attr_reader :color
  attr_reader :model
  attr_reader :type
  
  attr_accessor :speed
  attr_accessor :list_actions
  attr_accessor :last_action
  attr_accessor :total_distance
  attr_accessor :pizza_storage
  
  def initialize(model, type, color)
    @model = model
    @type = type
    @color = color
    @speed = 0
    @list_actions = []
    @last_action = @list_actions.last
    @total_distance = 0
    @pizza_storage = []
  end
 
  def drive(distance, speed)
    @list_actions << "You drove #{distance} miles at #{speed} MPH."
    @total_distance += distance
    @speed = speed
  end
  
  def set_distance(distance)
    @list_actions << "You drove #{distance} miles."
    @total_distance += distance
  end
  
  def set_speed(speed)
    @list_actions << "Speed: #{speed}"
    @speed = speed
  end
  
  def turn(direction)
    @list_actions << "You turned #{direction}"
    puts "You turned #{direction}"
  end
  
  def stop
    @list_actions << "You stopped."
    @speed = 0
  end
  
  def last_action
    @list_actions[-1]
  end
  
  def pizza_storage
    @pizza_storage
  end
  
  def add_pizza(pizza)
    @list_actions << "You added #{pizza} to your pizza storage."
    @pizza_storage << pizza.toppings
  end
  
  def get_pizza
    @list_actions << "You grabbed a #{@pizza_storage[-1]} pizza."
    @pizza_storage.pop
  end
  
end  

class Pizza
    
    attr_accessor :toppings
    
    def initialize(*toppings)
        @toppings = []
        toppings.each {|topping| @toppings << topping}
    end
end

# 1. DRIVER TESTS GO BELOW THIS LINE


def assert
    raise "Assertion failed!" unless yield
end

car = Car.new("Honda","sedan", "green")

pepperoni = Pizza.new("pepperoni")
mushroom = Pizza.new("mushroom")

car.add_pizza(mushroom)

car.add_pizza(pepperoni)


assert { car.drive(0.25, 25)
         car.total_distance == 0.25 }
         
# turn right
assert { car.stop
         car.speed == 0 }
         
assert { car.drive(1.5, 35)
         car.total_distance == 1.75 }
         
assert { car.speed == 35 }

assert { car.set_speed(15)
         car.speed == 15 }
         
assert { car.drive(0.25, 15) }

# turn left
assert { car.stop
         car.speed == 0 }
         
assert { car.drive(1.4, 35) }

assert { car.stop
         car.speed == 0 }
         
assert { car.total_distance == 3.4 }

assert { car.pizza_storage.length >= 1 }

assert { car.get_pizza == ["pepperoni"] }

assert { car.get_pizza == ["mushroom"] }

assert { car.pizza_storage.length == 0 }

# Storyboard Section---------- very funny! and fun!

# puts "Welcome to Grand Theft Pizza!"
# puts "First we need a car so we can make some sweet cash."
# puts "What brand of car would you like?"
# new_car = gets.chomp

# puts "Nice choice."
# puts "Now choose a type of that car."
# new_type = gets.chomp
# puts "Almost done with your fly new ride, just enter a color and we are finished."
# new_color = gets.chomp
# adventure_game = Car.new(new_car, new_type, new_color)


# puts "Are you ready for your first mission (choose y or n)"

# answer = gets.chomp

# if answer == "y"
#     puts "Great lets get started"
# elsif answer == "n"
#     puts "Your bills are not getting paid: GAME OVER."
#     Process.exit
# else
#     puts "That isn't a a viable answer: GAME OVER."
#     Process.exit
# end

# puts "The pizza is out of the oven and you are ready to go!"
# puts "Your work gps says to go .25 miles and the speed limit is 25mph.  Would you like to follow these directions?(y/n)"

# answer = gets.chomp

# if answer == "y"
#     adventure_game.drive(0.25, 25)
#     puts "Great I'll let you know when we need to change that."
# elsif answer == "n"
#     puts "That was a test.  Your fired. GAME OVER!"
#     Process.exit
# else
#     puts "Wrong button lands you in the pit of doom. GAME OVER!"
#     Process.exit
# end

# puts "There is a stop sign ahead.  Would you like to stop or run it like a boss!  Either way you must turn right or you will hit a building."

# answer = gets.chomp

# if answer == "stop"
#     adventure_game.stop
#     adventure_game.turn("right")
#     puts "You just got mugged at the stop sign: loose 20 points"
# elsif answer.include? "run"
#     puts "Dang bro I think you clipped someone in the crosswalk, better keep going"
#     adventure_game.turn("right")
# else 
#     puts "I'm not really sure what that means, this time its a freebie.  Keep going the pizza is getting cold"
# end

# puts "You need to drive another 1.5 miles, and the speed limit here is 35.  Would you like to obey the rules? (y/n)"

# answer = gets.chomp

# if answer == "y"
#     adventure_game.drive(1.5, 35)
#     puts "Copy I'll take care of that and add it to your log"
# elsif answer == "n"
#     puts "Ergh!  You should follow the rules.  I will let this slide but I will not report it to your log."
# else
#     puts "GAME OVER!"
#     Process.exit
# end

# puts "We are way behind and need to get this pizza delivered or you are going to get fired!"

# puts "There is a school zone ahead would you like to slow down and stop or floor it and ramp off the slide and hit the shortcut? (answer 1 to stop or 2 to go for it)"
# answer = gets.chomp.to_i

# if answer == 1
#     adventure_game.stop
#     puts "Your car breaks down and the pizza is cold.  GAME OVER!"
# elsif answer == 2
#     puts "Dang bro I can't believe you went for it.  I'm pretty sure your going to jail. GAME OVER!"
# else
#     puts "Congratz you found out that you win in life by entering random answers.  You win the lottery.  GAME OVER!"
# end

# puts "Thanks for playing"



# 5. Reflection

# What parts of your strategy worked? What problems did you face?
    # We wrote really strong tests that drove our development cycle to be more efficient and kept us on track.  We faced a problem formatting one of the pizza tests but figured it out.
# What questions did you have while coding? What resources did you find to help you answer them?
    # General syntax is becoming less general with every line of code that we write and as these problem sets become more complex it becomes harder to keep track of.  
# What concepts are you having trouble with, or did you just figure something out? If so, what?
    # We used trial and error to finalize the passing assertions for our pizza class.  We figured out that the string had to be inside an array because the array itself is nested.
# How confident are you with each of the Learning Competencies?
    # Rather confident after this.
# Which parts of the challenge did you enjoy?
    # Working in a small group is really great.
# Which parts of the challenge did you find tedious?
    # It was tedious at times to try to find out if it was the test that was failing or the code(for the pizza class).