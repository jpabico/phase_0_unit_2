# U2.W5: Implement a Reverse Polish Notation Calculator


# I worked on this challenge by myself

# 2. Pseudocode

# Input: a string of numbers and math operators
# Output: a correctly evaluated number
# Steps: define class called PRNCalculator
# initialize an instance variable called "str_to_evaluate"
# convert str_to_evaluate into array
# define instance method called "evaluate"
# return value of the original string evaluated 

# 3. Initial Solution

class RPNCalculator
	def initialize(str_to_evaluate)
		if str_to_evaluate.class != String
			raise ArgumentError("please enter a string")
		else
			@str_to_evaluate = str_to_evaluate
			@array_to_eval = @str_to_evaluate.split(" ")
		end
	end

	def evaluate
		if @array_to_eval[2] == "+"
			return @array_to_eval[0].to_i + @array_to_eval[1].to_i
		elsif @array_to_eval[2] == "-"
			return @array_to_eval[0].to_i - @array_to_eval[1].to_i
		elsif @array_to_eval[2] == "*"
			return @array_to_eval[0].to_i * @array_to_eval[1].to_i
		else
			return "Not a valid mathematical operator"
		end
	end
end

# test_1 = RPNCalculator.new("2 5 +")
# a = test_1.evaluate
# test_2 = RPNCalculator.new("2 5 -")
# a = test_2.evaluate
# test_3 = RPNCalculator.new("2 5 *")
# a = test_3.evaluate
# test_4 = RPNCalculator.new("2 5 ^")
# a = test_4.evaluate



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# test_1 = RPNCalculator.new("-1")
# p test_1.evaluate == -1
# test_2 = RPNCalculator.new("3 5 +")
# p test_2.evaluate == 8
# test_3 = RPNCalculator.new("3 5 -")
# p test_3.evaluate == -2
# test_4 = RPNCalculator.new("3 5 *")
# p test_4.evaluate == 15




# 5. Reflection 

# class RPNCalculator
#   def evaluate (input)

#     raise ArgumentError.new("input must be a string") unless input.class.to_s == "String"
#     stack = []

#     input.split(" ").each do |element|
#       case element
#       when /[0-9]/
#         stack << element
#       when "+"
#         stack << (stack.pop.to_i + stack.pop.to_i)
#       when "*"
#         stack << (stack.pop.to_i * stack.pop.to_i)
#       when "-"
#         stack << (-1*(stack.pop.to_i - stack.pop.to_i))
#       else
#         raise ArgumentError.new("input contains invalid characters")
#       end
#     end

#     stack[0].to_i

#   end
# end

# test_1 = RPNCalculator.new
# a = test_1.evaluate("2 5 +")
# puts a