# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: integer (16 digits long)
# Output: true if a valid credit card number ; false otherwise

# Steps:
# define a CreditCard class
# initialize  value of credit card number of object
# check if there are 16 digits in the Input
# raise an error if there isn't
# define a check_card method
# take credit card and change it into an array of digits
# take every other element and multiply it my 2
# take all two digit elements and add its digits together to 
# form a new number (replace old one)
# add all the elements together
# if it's a multiple of 10, return true
# otherwise return false

# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
# class CreditCard

# 	def initialize(ccnum)
# 		if ccnum.to_s.length != 16 
# 			raise ArgumentError.new("There must be exactly 16 digits in a credit card number")
# 		else
# 			@ccnum = ccnum
# 		end
# 	end

# 	def check_card
# 		ccarray = @ccnum.to_s.split("")
# 		ccarray.map! { |x| x.to_i }
# 		for i in 0...ccarray.length
# 			if i%2 == 0
# 				ccarray[i] = ccarray[i] * 2
# 			end
# 		end
# 		sum = 0		
		
# 		for j in 0...ccarray.length
# 			if ccarray[j] >=10
# 				sum += ccarray[j]/10 + ccarray[j]%10
# 			else
# 				sum += ccarray[j]
# 			end
# 		end
		
# 		if sum % 10 == 0
# 			return true
# 		else
# 			return false
# 		end
# 	end
# end


# 4. Refactored Solution

class CreditCard

	def initialize(ccnum)
		@ccnum = ccnum
		raise ArgumentError.new("There must be exactly 16 digits in a credit card number") if ccnum.to_s.length != 16 
	end

	def check_card
		ccarray = @ccnum.to_s.split("")
		ccarray.map! { |x| x.to_i }

		for i in 0...ccarray.length
			ccarray[i] = ccarray[i] * 2 if i%2 == 0
		 	ccarray[i] = ccarray[i]/10 + ccarray[i]%10 if ccarray[i] >=10
		end

		ccarray.inject(:+) % 10 == 0 ? true : false	
	end

end


# 1. DRIVER TESTS GO BELOW THIS LINE

test_card_1 = CreditCard.new(8651243992187311)
p test_card_1.check_card == true

test_card_2 = CreditCard.new(4545454545454545)
p test_card_2.check_card == false
  

# 5. Reflection 
# That was a fun challenge.  I had to really think about and
# break down the problem into step that I normally take for
# granted when solving via pencil and paper.  It helped to 
# pseudocode this one first.  By writing down the ministeps
# needed to accomplish a big step, I was better able to organize
# my thoughts and better able to tanslate what I was thinking
# into code.  Refactoring led to a few surprises.  Things that I
# thought wouldn't work did (ex. combining the two for loops into
# one) and things that I thought would work didn't (ex. I tried to 
# change those for loops into array#map blocks but ended up with
# some nil elements).