# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge myself

# 2. Pseudocode

# Input: a number representing a guess
# Output: a symbol representing a low, high, or correct guess;
# a boolean representing whether or not a correct answer has 
# been guessed

# Steps:
# define a GuessingGame class
# initialize the answer for the object
# define a class method to determine correctness of guess
# use conditionals to determine if the input guess
# is too high, too low, or just right
# should return a symbol
# define a method to determine if correct answer has been guessed
# should return a boolean

# 3. Initial Solution

# class GuessingGame

#   def initialize(answer)
#     @answer = answer
#     @solved = false
#   end
  
#   def guess(guess)
#   	@solved = false
#   	if guess > @answer
#   		return :high
#   	elsif guess < @answer
#   		return :low
#   	else
#   		@solved = true
#   		return :correct
#   	end
#   end

#   def solved?
#   	return @solved
#   end

# end

# 4. Refactored Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
    @match = false
  end
  
  def guess(guess)
  	@match = false
  	return :high if guess > @answer
  	return :low if guess < @answer
 	@match = true if guess == @answer
 	return :correct if guess == @answer
  end
  
  def solved?
  	return @match
  end
end


# 1. DRIVER TESTS GO BELOW THIS LINE

test_1 = GuessingGame.new(33)
p test_1.guess(12) == :low
p test_1.solved? == false
p test_1.guess(78) == :high
p test_1.solved? == false
p test_1.guess(33) == :correct
p test_1.solved? == true


# 5. Reflection 
# This was a little on the difficult side.  I was doing just
# fine until I had to figure out how to get a separate method
# (solved?) to return a variable that was determined in another
# method (guess).  But that's because I had a problem with
# scope, treating the boolean "solved" as a local variable
# rather than an instance variable.  Once I figurd that out, I 
# did a lot better.  I'm wondering if there's a way to refactor
# several if statements more efficiently than the way I did it?
# I'll find out when I review other people's solutions.
  
