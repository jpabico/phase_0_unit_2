# U2.W4: 2_homework_cheater.rb

# I worked on this challenge by myself

# 2. Pseudocode

# Input: a set of parameter strings - title, topic, date, 
# thesis_statement, pronoun

# # Output: a text of the homework assignment incorporating 
# the information provided in the parameters

# Steps:

# 1) Create class that utilizes method above
# 2) Define methods that take parameters
# (title, topic, date, thesis_statement, pronoun) and write
# various parts of the essay
# 3) Use string interpolation to insert parameters as pieces of
# information for the text output.
# 4) Create instances of class (specific objects) to aid in
# string interpolation
# 5) Use If statements to determine whether pronouns used are correct



# 3. Initial Solution

class Essay
	def initialize(title, topic, date, thesis, pronoun)
		@title = title
		@topic = topic
		@date = date
		@thesis = thesis
		@pronoun = pronoun
	end

	def essay_top(title, topic)
		print self.title.upcase
		puts ":"
		puts "The story about #{self.topic}"
	end


# 4. Refactored Solution







# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 
