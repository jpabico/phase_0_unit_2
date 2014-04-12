# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: array of numbers and/or strings
# Output: a number representing the number of sides;
# a string representing the random roll of a die

# Steps:
# define Die class
# initialize number of sides based on length of array
# check for valid number of sides (greater than 0)
# raise error if sides is not greater than 0
# define class method for sides (returns number of sides)
# define class method for roll (returns a string from array)
# use array index to return string

# 3. Initial Solution

# class Die
#   def initialize(labels)
#   	if labels.length < 1
# 	 		raise ArgumentError.new("You cannot have less than 1 side")
#   	else
#     		@sides = labels.length
#     		@labels = labels
# 		end
#   end

#   def sides
#   	return @sides
#   end

#   def roll
#   	return @labels[rand(0...@sides)]
#   end
# end


# 4. Refactored Solution

class Die
  def initialize(labels)
  	labels.length < 1 ? (raise ArgumentError.new("You cannot have less than 1 side")) : @sides = labels.length; @labels = labels
  end

  attr_reader :sides

  def roll
  	return @labels.sample
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
test_die_1 = Die.new(["A", "B", "C", "D", "E"])
p ["A", "B", "C", "D", "E"].length == test_die_1.sides

test_die_2 = Die.new(["T", "U", "V", "W", "X", "Y", "Z"])
p test_die_2.sides == 7

test_die_3 = Die.new(["W", "X", "Y", "Z"])
p ("W".."Z").include? test_die_3.roll


# 5. Reflection 
# Nice challenge.  I was wondering how to change the labels of
# the sides to be words or pictures.  Now I have a good idea
# of how to do so.  The hardest part of this assignment was to
# write the driver tests.  Actually, it's the part that is 
# becoming more and more difficult for me.  Not to the point
# where I can't do it, but I'm definitely taking more time
# and giving more thought into it with each each challenge.