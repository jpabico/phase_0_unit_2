# U2.W4: 2_homework_cheater.rb

# I worked on this challenge by myself

# 2. Pseudocode

# Input: parameter that consists of strings: title, topic, protagonist, 
# plot_1, plot_2, and pronoun

# # Output: a "homework assignments" which consists of a paragraph (string) 
# using the input strings as pieces of information 

# Steps:

# 1) Define a method (hw_cheater) that takes a hash input (info_hash)
# 2) Create string (main_text) for essay structure
# 3) Using keys of input hash, use string interpolation to fill in information
# 4) Return main_text
# 5) Create hashes to represent objects for input


# 3. Initial Solution
# him_example = {
# 	"title" => "Over the River",
# 	"topic" => "saving the city from destruction",
# 	"protagonist" => "Aquaman",
# 	"plot_1" => "saves the citizens from drowning",
# 	"plot_2" => "beats his evil nemisis",
# 	"pronoun" => "he"
# }

# her_example = {
# 	"title" => "Through the Woods",
# 	"topic" => "searching for BigFoot",
# 	"protagonist" => "Wonder Woman",
# 	"plot_1" => "goes camping in the forest",
# 	"plot_2" => "takes photographs of animals",
# 	"pronoun" => "she"
# }

# it_example = {
# 	"title" => "To Grandmother's House We Go",
# 	"topic" => "being shipped in a UPS truck",
# 	"protagonist" => "the Package",
# 	"plot_1" => "is dropped several times",
# 	"plot_2" => "is tossed into the yard",
# 	"pronoun" => "it"
# }

# def hw_cheater(info_hash)
# 	text1 = "I had the pleasure of reading #{info_hash["title"]} last week in class.  "
# 	text2 = "It was about the main character, #{info_hash["protagonist"]}, and how #{info_hash["pronoun"]} was #{info_hash["topic"]}.  "
# 	text3 = "My favorite part was when #{info_hash["protagonist"]} #{info_hash["plot_1"]}.  "
# 	text4 = "I also like the part when #{info_hash["pronoun"]} #{info_hash["plot_2"]}.  That was really something.  "
# 	text5 = "I give this book a thumbs up!"
# 	main_text = text1 + text2 + text3 + text4 + text5
# 	return main_text
# end

# 4. Refactored Solution
# I didn't want to sacrifice readability for fewer lines of code
# The only major change is the format of the hash objects

him_example = {"title" => "Over the River",	"topic" => "saving the city from destruction", "protagonist" => "Aquaman", "plot_1" => "saves the citizens from drowning", "plot_2" => "beats his evil nemisis", "pronoun" => "he"}
her_example = {"title" => "Through the Woods", "topic" => "searching for BigFoot", "protagonist" => "Wonder Woman", "plot_1" => "goes camping in the forest", "plot_2" => "takes photographs of animals", "pronoun" => "she"}
it_example = {"title" => "To Grandmother's House We Go", "topic" => "being shipped in a UPS truck", "protagonist" => "the Package", "plot_1" => "is dropped several times", "plot_2" => "is tossed into the yard", "pronoun" => "it"}

def hw_cheater(info_hash)
	text1 = "I had the pleasure of reading #{info_hash["title"]} last week in class.  "
	text2 = "It was about the main character, #{info_hash["protagonist"]}, and how #{info_hash["pronoun"]} was #{info_hash["topic"]}.  "
	text3 = "My favorite part was when #{info_hash["protagonist"]} #{info_hash["plot_1"]}.  "
	text4 = "I also like the part when #{info_hash["pronoun"]} #{info_hash["plot_2"]}.  That was really something.  "
	text5 = "I give this book a thumbs up!"
	return text1 + text2 + text3 + text4 + text5
end


# 1. DRIVER TESTS GO BELOW THIS LINE
p him_example["pronoun"] == "he"
p her_example["pronoun"] == "she"
p it_example["pronoun"] == "it"
p him_example.is_a? Hash
p her_example["title"].is_a? String
puts it_example.keys .is_a? Array 
p hw_cheater(him_example) == "I had the pleasure of reading Over the River last week in class.  It was about the main character, Aquaman, and how he was saving the city from destruction.  My favorite part was when Aquaman saves the citizens from drowning.  I also like the part when he beats his evil nemisis.  That was really something.  I give this book a thumbs up!"
p hw_cheater(her_example) == "I had the pleasure of reading Through the Woods last week in class.  It was about the main character, Wonder Woman, and how she was searching for BigFoot.  My favorite part was when Wonder Woman goes camping in the forest.  I also like the part when she takes photographs of animals.  That was really something.  I give this book a thumbs up!"
p hw_cheater(it_example) == "I had the pleasure of reading To Grandmother's House We Go last week in class.  It was about the main character, the Package, and how it was being shipped in a UPS truck.  My favorite part was when the Package is dropped several times.  I also like the part when it is tossed into the yard.  That was really something.  I give this book a thumbs up!"

# 5. Reflection
# I first tried to make a class out of the essay_writer method.  But I got 
# a little confused about how it was supposed to be structured.  After fooling 
# around with it for a while, I thought that it was more practical just to 
# make essay_writer a method.  I was also initially going to make the input 
# arguments a bunch of strings.  But I found it easier to just define the 
# inputs as a hash containing all the information I need.  That way I was able 
# to pass just one argument into my method.  Despite how "easy" this assignment
# might have seemed at the beginning, the amount of possibilities of 
# arrangements of the words and variety of words that can be used in writing
# an essay made it difficult to write a single template for an essay.  
# Issues like first letters (starts with a vowel? capitalized? inside 
# quotes?), gender (male? female? neutral? subject? object? possessive?), and
# punctuation (how do I deal with adverbs? car ON the road vs plane IN the air) 
# 	kept coming up and I had to rewrite the template a few times to make
# 	it general enough so I could make up a generic story.  Much of the times
# 	during phase 0 I've been focusing on the technical stuff (logic behind
# 	the code, syntax, methods, etc) but I realize that I need to get 
# better at incorporating the design aspect as well.  That will be one of my
# long term goals.
