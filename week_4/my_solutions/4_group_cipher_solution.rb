# U2.W4: Cipher Challenge

# I worked on this challenge with Christiane Kammerl

# 1. Solution

# Write your comments on what each thing is doing. 

# def north_korean_cipher(coded_message)

# # set a new var called input equal to calling .downcase and .split on the input (coded_message) to return an array of strings of individual characters
#   input = coded_message.downcase.split("")
# # define a new empty array called decoded_sentence
#   decoded_sentence = [] 
# # write a hash called cipher with a key-value pair; the inidiviual keys are the elements of the input as array of strings; the resp. values are letters of the alphabet;
#   cipher = {"e" => "a",   
#             "f" => "b",  
#             "g" => "c", 
#             "h" => "d", 
#             "i" => "e", 
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}
    
#   input.each do |x| # each element (individual string character) of the input array is going to do the following...
# # the purpose of the variable found_match being set equal to false is to make sure that the deciphering actually occurs
#     found_match = false  
#     cipher.each_key do |y| # each key of the hash cipher is going to do the following...
# # it is checking if it is true that each key of the hash cipher is equal to each element of the input array (which is at the same time the value in the hash)
#       if x == y  
#         #if true 
#         puts "I am comparing x and y. X is #{x} and Y is #{y}." #prints out the string values of x and y as a string
#         decoded_sentence << cipher[y] # the value of the hash cipher (the decoded letter) defined by the key y is pushed into the array decoded_sentence 
#         found_match = true
#         break  # when condition equals true, break and do not continue comparing this key but go back to line 62 and check the next key in your hash
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
#         decoded_sentence << x
#         found_match = true
#         break
#       end 
#     end
# .   if not found_match  # if none of the three if statements above are executed, then do the following...
#       decoded_sentence << x   # push the string character from the input array into the decoded_sentence array
#     end   #end of conditional
#   end   #end of input.each method
#   decoded_sentence = decoded_sentence.join("")   # returns a string created by converting each elements of the array to a string and combining them into one string 


# create a copy of the string stored in var decoded_sentence and then look at each letter of the string to see if it is a digit;
# any digit you find in the copied string, make it an integer and then divide it by 100; then return the adjusted copied string (destructive method)
  
#   if decoded_sentence.match(/\d+/) 
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } 
#   end   # end of conditional
#   return decoded_sentence # this is the string of the decoded message       
# end   # end of method


# Your Refactored Solution

def north_korean_cipher(coded_message)        
    input_as_arr_of_letters = coded_message.downcase.split("")  
    decoded_sentence = []                     

    cipher = {}     # recreated cipher via for loops
    keys = ("e".."z").to_a + ("a".."d").to_a
    values = ("a".."v").to_a + ("w".."z").to_a 
    for i in 0...keys.length
        cipher[keys[i]] = values[i]
    end
           
  input_as_arr_of_letters.each do |x| 
    found_match = false  
    cipher.each_key do |y| 
      decoded_sentence << cipher[y] if x == y
      decoded_sentence << " " if x.match(/[@#%&\$\^\*]/)
      decoded_sentence << x if (0..9).to_a.include?(x)
      found_match = true if x == y || x.match(/[@#%&\$\^\*]/) || (0..9).to_a.include?(x)
      break if found_match == true
    end
      decoded_sentence << x if not found_match
  end
 
=begin    ALTERNATIVE - EASIER TO READ (THE ABOVE IS JUST SHORTER)
 input_as_arr_of_letters.each do |x| 
    found_match = false  
    cipher.each_key do |y| 
      if x == y  
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) 
        decoded_sentence << x
        found_match = true
        break
      end 
    end  
=end 
    
  revealed_message = decoded_sentence.join("")
  revealed_message.gsub!(/\d+/) { |num| num.to_i / 100 } if revealed_message.match(/\d+/)
  return revealed_message 

end

# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!").class == String
p north_korean_cipher("m^aerx%e&gsoi!") != north_korean_cipher("m^aerx%e&gsoi!").capitalize
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

# Reflection
# This was a good challenge.  I was able to work with a new accountability 
# group member and learn from her strengths and methods.  Most of the problems
# that we faced working together as a pair were related to the challenge 
# itself.  Some of the instructions were open for interpretation.  When asked
# to go line by line and understand what each and every line meant, we
# sort of groaned at the thought of having to explain even the most obvious
# commands (e.g. end means end of method).  Also, in terms of refactoring, 
# was the code going to be better because we used fewer lines, was using more
# efficient methods, made it more readable, or what?  The instructions
# didn't help in this sense.  But overall, I found the challenge to be
# enjoyable because I had a great partner to work with.  She was patient
# and a very good problem solver.  She also had a way of putting into words
# what I couldn't (or had difficulty with).  I definitely benifitted from
# working with somebody on this challenge.
