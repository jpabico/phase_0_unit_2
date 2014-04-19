# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge by myself

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
# define a class PezDispenser
# initialize instance varaibles @flavors and @pez_count
# define pez_count method to keep track of how many pez pieces remain 
# define get_pez method - count goes down by one and one flavor removed
# define add_pez method - count goes up by one and one flavor added
# define see_all_pez method to return all remaining flavors


# 3. Initial Solution

# class PezDispenser

# 	attr_reader  :pez_count

# 	def initialize(flavors)
# 		@flavors = flavors
# 		@pez_count = flavors.length
# 	end

# 	def get_pez
# 		@pez_count -= 1
# 		@flavors = @flavors.pop
# 	end

# 	def add_pez(pez)
# 		@pez_count += 1
# 		@flavors = @flavors.push(pez)
# 	end

# 	def see_all_pez
# 		@flavors
# 	end

# end
 

# 4. Refactored Solution

class PezDispenser

	attr_reader  :pez_count

	def initialize(flavors)
		@flavors = flavors
		@pez_count = flavors.length
	end

	def get_pez
		@pez_count -= 1
		@flavors = @flavors.pop
	end

	def add_pez(pez)
		@pez_count += 1
		@flavors = @flavors.push(pez)
	end

	def see_all_pez; @flavors end

end


# 1. DRIVER TESTS GO BELOW THIS LINE

# %w( a b c ) is shorthand for ["a", "b", "c"]
flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"

def assert
	raise "Assertion failed!" unless yield
end

assert {"hi" == "hi"}


# 5. Reflection 