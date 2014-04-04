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
 
#   if decoded_sentence.match(/\d+/) # if strings are found that contain digits as strings (not numbers/floats), do the following...
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } # convert string digits into integers, divide each integer by 100 and replace the original number by the result
#   end   # end of conditional
#   return decoded_sentence # this is the string of the decoded message       
# end   # end of method


# Your Refactored Solution

def north_korean_cipher(coded_message)
    input = coded_message.downcase.split("")
    decoded_sentence = []

    cipher = {}     # recreated cipher via for loops
    keys_1 = ("e".."z").to_a 
    values_1 = ("a".."v").to_a 
    keys_2 = ("a".."d").to_a 
    values_2 = ("w".."z").to_a 

    for i in 0...keys_1.length
        cipher[keys_1[i]] = values_1[i]
    end

    for i in 0...keys_2.length
        cipher[keys_2[i]] = values_2[i]
    end
             
  input.each do |x| 
    found_match = false  
    cipher.each_key do |y| 
      if x == y  
        #puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" 
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) 
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } 
  end  
  return decoded_sentence      
end




# Driver Code:
p north_korean_cipher("m^aerx%e&gsoi!").class == String
p north_korean_cipher("m^aerx%e&gsoi!") == north_korean_cipher("m^aerx%e&gsoi!").downcase
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.") == "our people eat the most delicious and nutritious foods from our 10000 profitable farms."
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!") == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.") == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!") == "next stop: south korea, then japan, then the world!"
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?") == "can somebody just get me 100 bags of cool ranch doritos?"

# Reflection
 

# Run the code to see what the expected output is.
# Write tests using driver test code. What can you rely on? What can't you rely on?
# Copy the initial code and identify what each line of code is doing. 
# Write comments next to or above each line with an explanation. 
# Really focus on breaking each step down. You want to understand every line.
# Refactor (by rewriting) the initial solution
# Clean up the variable names.
# The original code used a hard-coded hash to do the encryption. 
# Can you create a simple algorithm instead? 
# The original shift was by 4 characters. 
# What would happen if it was changed to 10?
# Reflect
# Sync your changes (push your solution) to Github, 
# then  email your code to your accountability group.
# Review the other solutions in your accountability groups. 
# Were the solutions different? What did the others do well or better than you? 
# What did you do well? Comment on each solution. 
# Arrange a half hour discussion on the weekend to discuss your different approaches.