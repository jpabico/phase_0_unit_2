# U2.W4: SOLO Challenge - Separate Numbers With Commas

# I worked on this challenge myself

# 2. Pseudocode

# Input: An integer
# Output: A comma-separated integer as a string
# Steps:

# 1) define a method called comma_separate with one argument (an_integer)
# 2) convert the integer to a string
# 3) reverse the string
# 4) slice the string 3 characters at a time and put them in an array
# 5) join the string elements of the array together with a comma
# 6) reverse the resulting string


# 3. Initial Solution

# def separate_comma(an_integer)
#     trio_array = []
#     integer_string = an_integer.to_s
#     rev_str = integer_string.reverse!
#     while rev_str.length > 3
#         trio_array.push(rev_str.slice!(0,3))
#     end
#     trio_array.push(rev_str)
#     return trio_array.join(",").reverse
# end


# 4. Refactored Solution

def separate_comma(an_int)
    trio = []
    rev_str = an_int.to_s.reverse!
    trio.push(rev_str.slice!(0,3)) while rev_str.length > 3
    trio.push(rev_str)
    return trio.join(",").reverse
end


# 1. DRIVER TESTS GO BELOW THIS LINE

# separate_comma(0) == "0"
# separate_comma(12) == "12"
# separate_comma(345) == "345"
# separate_comma(1234) == "1,234"
# separate_comma(56789) == "56,789"
# separate_comma(123456) == "123,456"
# separate_comma(12123456123456) == "12,123,456,123,456"


# 5. Reflection 

# This was a good exercise for me.  I was worried at first with
# the thought of having to use regular expressions until I read 
# the requirements.  Now that I am starting to get more familiar
# with array methods, it didn't take me long to recall the #join
# method.  I tried to slice my string starting from the end but
# produced an error.  Rather than trying to figure out the syntax 
# (which sometimes takes up a significant chunk of time) I decided 
# to simply reverse my string and slice from the front.  This is
# the first time I've used while as a modifier at the end of a
# command statement (I usually use while...end).  I wasn't sure if
# the driver tests I wrote were sufficient to catch "all" errors
# that could be made.  But it is an area that I am still improving in
# and one in which I see great value. Driver tests and pseudocode work
# wonderfully together to make me think clearer about the structure and 
# expected output of my code.