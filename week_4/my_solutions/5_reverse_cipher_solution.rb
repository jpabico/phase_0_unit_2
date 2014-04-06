# U2.W4: Refactor Cipher Solution


# I worked on this challenge by myself


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)   # define method with string input
    alphabet = ('a'..'z').to_a   # an array consisting of the letters a through z as strings

# alphabet.rotate(4) rotates the elements of alphabet by setting the element at index 4 as the first element of a new array
# .zip then merges elements of the original alphabet array with corresponding elements from the new rotated array
# this is then represented as a hash
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
    spaces = ["@", "#", "$", "%", "^", "&", "*"]   # an array of characters that represent spaces
    
    original_sentence = sentence.downcase   # takes string input and makes sure everything is lower case
    encoded_sentence = []   # define an empty array to hold encoded sentence
    original_sentence.each_char do |element|   # for each character in the input string, do the following...
      if cipher.include?(element)   # if the character is present as a key in the cipher hash...
        encoded_sentence << cipher[element]   # push that key's value into the encoded_sentence array
      elsif element == ' '   # if the character in the original sentence is a space...
        encoded_sentence << spaces.sample   # pick a random element from the spaces array and push it into the encoded_sentence array
      else    # if none of the above are true, do the following...
        encoded_sentence << element   # push the character itself into the encoded_sentence array
      end   # end of conditional statements
     end   # end of do statement
    
    return encoded_sentence.join   # return the elements of the encoded_sentence array as one string 
end   # end of method


# Questions:
# 1. What is the .to_a method doing? 
# converts the range into an array

# 2. How does the rotate method work? What does it work on?
# .rotate(x) rotates the elements of the array on which it's called by 
# setting the element at index argument x as the first element of a new array

# 3. What is `each_char` doing?
# it's going to run a block of code for each character in the string 
# on which the method was called

# 4. What does `sample` do?
# it picks a random elements from the array on which it was called

# 5. Are there any other methods you want to understand better?
# .zip seems to be a confusing method.  I'd like to understand that better.
# .rotate(n) is also a little confusing in that by putting the 
# argument n in the first spot of the new array, in my mind it shifts the
# entire original array backwards when really it's shifting everything
# forward.  But, again, that's in my mind.  I just have to get it straight.

# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# This looks much cleaner and simpler than the original cipher code.
# Although the 2 codes are supposed to be inverse of one another, 
# somtimes going backwards isn't as direct as going forward.  It's
# just like math (e.g. taking the derivative of a function is often
#   easier than taking the integral of the result).

# 7. Is this good code? What makes it good? What makes it bad?
# I think it's a good code in that it's simple and straight to the point.
# It's very readable and one can easily understand what's it's doing.
# But considering that the purpose of the code is to scramble the letters
# around to keep the original message from being read by unwanted
# individuals, this might be considered a bad code.  People that aren't
# supposed to read the message can easily figure out how to decipher the
# message due to the simplicity of the code.

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
# no, it doesn't return the same thing every time because
# the space character can be represented by more than one 
# different character

p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")


# 5. Reflection 
# For me, this was a  surprisingly straight-forward exercise in identifying
# what different array/hash methods do.  I say "surprisingly" because I
# have been recently wondering whether or not I've been absorbing the 
# material.  I've read about so many methods in the past week that it's
# difficult for me to recall the ones that I need.  Or sometimes I have
# a hard time recalling what a familiar-sounding method did.  Luckily, I
# was able to recall most of the methods presented in this challenge.  I 
# only had to look up about 3 or 4 of them.  Admittedly, I wouldn't have
# set up the overall code for this challenge in the same way as it was
# presented.  My code would have been more convoluted than this one.  For
# me, that's an indication of something that I need to continue to work on.  