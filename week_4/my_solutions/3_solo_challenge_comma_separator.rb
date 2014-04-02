




a=[]
d = "ab123cde456fgh"
dr = d.reverse!
while dr.length > 3
a.push(dr.slice!(0, 3))
end
a.push(dr)
a.join(",").reverse

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

def separate_comma(an_integer)
    trio_array = []
    integer_string = an_integer.to_s
    rev_str = integer_string.reverse!
    while rev_str.length > 3
        trio_array.push(rev_str.slice!(0,3))
    end
    trio_array.push(rev_str)
    return trio_array.join(",").reverse
end



# 4. Refactored Solution








# 1. DRIVER TESTS GO BELOW THIS LINE

# separate_comma(0) == "0"
# separate_comma(12) == "12"
# separate_comma(345) == "345"
# separate_comma(1234) == "1,234"
# separate_comma(56789) == "56,789"
# separate_comma(123456) == "123,456"
# separate_comma(12123456123456) == "12,123,456,123,456"


# 5. Reflection 