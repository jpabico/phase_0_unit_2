# U2.W6: Refactoring for Code Readability


# I worked on this challenge by myself


# Original Solution

# class CreditCard
# 	def initialize (ccnum)
# 		@ccnum = ccnum.to_s.split("")     # array of strings
# 		@ccnum = @ccnum.reverse!          # calculation purposes only
# 		if @ccnum.length != 16
# 			raise ArgumentError.new("Please provide a 16 digit number")
# 		end
# 	end
# 	def check_card
# 		x = 1                            #represents seconds to last digit
# 		while x < @ccnum.length          
# 			@ccnum[x] = ((@ccnum[x].to_i)*2).to_s
# 			x += 2
# 		end
# 		@ccnum.each do |x|            # adds 2-digit numbers together
# 			if x.length == 2
# 				myindex = @ccnum.index(x)
# 				@ccnum[myindex] = (x[0].to_i + x[1].to_i).to_s
# 			end
# 		end
# 		newccnum = @ccnum.map { |x| x.to_i }             # array of integers
# 		arraysum = newccnum.inject{ |sum, n| sum + n }   # sum of array
# 		if arraysum % 10 == 0
# 			return true
# 		else 
# 			return false
# 		end
# 	end
# end


# Refactored Solution

class CreditCard

	def initialize (ccnum)
		@ccnum = ccnum.to_s.split("")
		raise ArgumentError.new("Provide 16 digits") if @ccnum.length != 16
	end

	def check_card

		index = 0
		while index < @ccnum.length
			@ccnum[index] = ((@ccnum[index].to_i)*2).to_s
			index += 2
		end

		@ccnum.each do |x|
			if x.length == 2
				myindex = @ccnum.index(x)
				@ccnum[myindex] = (x[0].to_i + x[1].to_i).to_s
			end
		end

		arraysum = @ccnum.map { |x| x.to_i }.inject(:+)
		arraysum % 10 == 0 ? true : false  
			
	end
end

# -------------------------notes on changes made---------------------------

# I tried to preserve the style and method of the original solution 
# (i.e. I didn't try to "solve it in a different way" for this person)
# Main priorities were readability, less logical complexity and D.R.Y.

# added spaces between methods / blocks of code (conditionals/loops)

# The ArgumentError if/else conditional at the start of the program was 
# changed to a one-line format

# The line '@ccnum = @ccnum.reverse!' from the initialize method above
# was removed. This resulted in changing the initial index for the 
# check_card method from 'x=1' to 'x=0'

# Variable 'x' was changed to 'index' for more clarity

# Near the end of the program, the shorter form of inject sum was used

# Removed the 'newccnum' variable

# The last if/else conditional in the program (the return) was changed 
# to a one-line format


# DRIVER TESTS GO BELOW THIS LINE

test_card_1 = CreditCard.new(8651243992187311)
p test_card_1.check_card == true

test_card_2 = CreditCard.new(4545454545454545)
p test_card_2.check_card == false




# Reflection 
# In general, I like refactoring challenges (at least the ones that 
# we've done).  It forces me to simplify, my logic, make my code more 
# readable, and motivates me to look up new/alternative methods.  For 
# this particular challenge, it was nice to browse through my classmates' 
# solutions to give me ideas on others ways to accomplish the same task.
# As I looked for one that I could refactor, I asked myself, "Which of 
# these can I refactor without changing the method?"  I wanted to be 
# able to distinguish between editing someone's code for readability vs 
# editing someone's code for method/procedure.  Finding someone that 
# solved it differently than the way I did it forced me to think about 
# using different and new methods.