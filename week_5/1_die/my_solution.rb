# U2.W5: Die Class 1: Numeric

# I worked on this challenge by myself

# 2. Pseudocode

# Input: integer representing number of sides
# Output: integer representing number of sides; 
# integer representing roll of die

# Steps: define Die class
# initialize number of sides
# check for valid number of sides (greater than 0)
# raise error if sides is not greater than 0
# define class method for sides (returns number of sides)
# define class method for roll (returns a number less than 
# or equal to number of sides)

# 3. Initial Solution

# class Die
#   def initialize(sides)
#   	if sides < 1
# 	 		raise ArgumentError.new("You cannot have less than 1 side")
#   	else
#     		@sides = sides
# 		end
#   end
  
#   def sides
#   	return @sides
#   end
  
#   def roll
#   	return rand(1..@sides)
#   end
# end


# 4. Refactored Solution

class Die
  def initialize(sides)
  	sides < 1 ? (raise ArgumentError.new("You cannot have less than 1 side")) : @sides = sides
  end

  attr_reader :sides

  def roll
    rand(1..@sides)
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE
test_die_1 = Die.new(40)
p test_die_1.sides == 40

test_die_2 = Die.new(50)
p (1..50).include? test_die_2.sides

test_die_3 = Die.new(33)
p (1..test_die_3.sides).include? rand(1..33)


# 5. Reflection 
# Good way to get things started.  I had to keep looking at the
# syntax for classes and class objects.  I'll need a lot more 
# practice before I start feeling comforable with writing up
# class without refering to anything.  While doing research, I
# got a little confused between the different types of attr_ 's
# (reader, writer, accessor), mostly because I've never seen
# them before.  I ended up using attr_reader in my refactoring,
# but I wonder if it makes any difference if I just change it
# back to its un-refactored form?  I think it would more readable
# if I did (but maybe it won't be as fast/efficient?).