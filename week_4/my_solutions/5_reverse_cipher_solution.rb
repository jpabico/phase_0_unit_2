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
#
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
# 2. How does the rotate method work? What does it work on?
# 3. What is `each_char` doing?
# 4. What does `sample` do?
# 5. Are there any other methods you want to understand better?
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# 7. Is this good code? What makes it good? What makes it bad?


# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 

