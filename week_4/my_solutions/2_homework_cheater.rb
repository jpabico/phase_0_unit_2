# U2.W4: 2_homework_cheater.rb

# I worked on this challenge by myself

# 2. Pseudocode

# Input: parameter that consists of strings: title, topic, protagonist, plot_1, plot_2, and pronoun

# # Output: a "homework assignments" which consists of a paragraph (string) using the input strings as pieces of information 

# Steps:

# 1) Define a method (hw_cheater) that takes a hash input (info_hash)
# 2) Create string (main_text) for essay structure
# 3) Using keys of input hash, use string interpolation to fill in information
# 4) Return main_text
# 5) Create hashes to represent objects for input


# 3. Initial Solution
him_example = {
	"title" => "Over the River",
	"topic" => "saving the city from destruction",
	"protagonist" => "Aquaman",
	"plot_1" => "saves the citizens from drowning",
	"plot_2" => "beats his evil nemisis",
	"pronoun" => "he"
}

her_example = {
	"title" => "Through the Woods",
	"topic" => "searching for BigFoot",
	"protagonist" => "Wonder Woman",
	"plot_1" => "goes camping in the forest",
	"plot_2" => "takes photographs of animals",
	"pronoun" => "she"
}

it_example = {
	"title" => "To Grandmother's House We Go",
	"topic" => "being shipped in a UPS truck",
	"protagonist" => "the Package",
	"plot_1" => "is dropped several times",
	"plot_2" => "is tossed into the yard",
	"pronoun" => "it"
}

def hw_cheater(info_hash)
	text1 = "I had the pleasure of reading #{info_hash["title"]} last week in class.  "
	text2 = "It was about the main character, #{info_hash["protagonist"]}, and how #{info_hash["pronoun"]} was #{info_hash["topic"]}.  "
	text3 = "My favorite part was when #{info_hash["protagonist"]} #{info_hash["plot_1"]}.  "
	text4 = "I also like the part when #{info_hash["pronoun"]} #{info_hash["plot_2"]}.  That was really something.  "
	text5 = "I give this book a thumbs up!"
	main_text = text1 + text2 + text3 + text4 + text5
	return main_text
end

# 4. Refactored Solution



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