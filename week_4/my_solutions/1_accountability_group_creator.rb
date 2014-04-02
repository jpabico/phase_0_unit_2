# U2.W4: Title here


# I worked on this challenge by myself

# 2. Pseudocode

# Input:

# The input is an array of names (strings)
# Output:

# The output is a hash with [key, val] of [units, groups]
# The groups themselves are hashes with [key, val] of [groups, array of names]

# Steps:

# 1) define a function called group_create with one argument (names_array)
# 2) define new hash for units
# 3) define number of units (for looping)
# 4) define new hash for groups
# 5) define number of groups (for looping)
# 6) shuffle names_array
# 7) define number of people per group (for looping)

# 3. Initial Solution

# def group_create(names_array)
    
#     unit_hash = Hash.new({})
#     number_of_units = 3
    
#     for h in 1..(number_of_units)
    
#         unit_names = names_array.shuffle  #shuffle names
#         n = names_array.length
#         group_size = 4
#         number_of_groups = n / group_size
#         extras = n % group_size 
#         group_hash = Hash.new([])
    
#         for i in 1..( group_size + 1 )  # for each group...
#             for j in 1..(number_of_groups)  # "deal out" one person per group
#                 group_hash["group"+ j.to_s] += [unit_names.pop].compact
#                 #thanks to Code School: Ocean of Objects for naming technique
#             end
#         end
#         unit_hash["unit" + h.to_s] = group_hash
#     end  
#     return unit_hash
# end


# 4. Refactored Solution

def group_create(names_array)    
    unit_hash = Hash.new({}) 
    n = names_array.length
    for h in 1..3   # 3 units
        unit_names = names_array.shuffle
        group_hash = Hash.new([])
        5.times {   # max 5 people per group
            for j in 1..(n/4)  # number of groups
                group_hash["group"+ j.to_s] += [unit_names.pop].compact
            end
        unit_hash["unit" + h.to_s] = group_hash }
    end    
    return unit_hash
end


# 1. DRIVER TESTS GO BELOW THIS LINE

# cohort array represents 27 names.  Single letters used in the interest of
# saving space and time

cohort = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "zz"]

p group_create(cohort).keys[0] == "unit1" # unit1 is 1st key of outer hash
p group_create(cohort).keys[1] == "unit2" # unit2 is 2nd key of outer hash
p group_create(cohort).keys[2] == "unit3" # unit3 is 3rd key of outer hash
p group_create(cohort).values[0].keys.length == 6 # there are 6 groups
p group_create(cohort).values[1].keys.length == 6 # there are 6 groups
p group_create(cohort).values[2].keys.length == 6 # there are 6 groups
p group_create(cohort).values[0].keys == ["group1", "group2", "group3", "group4", "group5", "group6"] # array of the group names
p group_create(cohort).values[1].keys == ["group1", "group2", "group3", "group4", "group5", "group6"] # array of the group names
p group_create(cohort).values[2].keys == ["group1", "group2", "group3", "group4", "group5", "group6"] # array of the group names
p group_create(cohort).values[0].values.flatten.length == 27 # size of cohort
p group_create(cohort).values[1].values.flatten.length == 27 # size of cohort
p group_create(cohort).values[2].values.flatten.length == 27 # size of cohort

# for 27 names, there should be 5 people each in groups 1, 2, and 3
# for 27 names, there should be 4 people each in groups 4, 5, and 6
p group_create(cohort).values[0].values[0].length == 5
p group_create(cohort).values[0].values[1].length == 5
p group_create(cohort).values[0].values[2].length == 5
p group_create(cohort).values[0].values[3].length == 4
p group_create(cohort).values[0].values[4].length == 4
p group_create(cohort).values[0].values[5].length == 4
p group_create(cohort).values[1].values[0].length == 5
p group_create(cohort).values[1].values[1].length == 5
p group_create(cohort).values[1].values[2].length == 5
p group_create(cohort).values[1].values[3].length == 4
p group_create(cohort).values[1].values[4].length == 4
p group_create(cohort).values[1].values[5].length == 4
p group_create(cohort).values[2].values[0].length == 5
p group_create(cohort).values[2].values[1].length == 5
p group_create(cohort).values[2].values[2].length == 5
p group_create(cohort).values[2].values[3].length == 4
p group_create(cohort).values[2].values[4].length == 4
p group_create(cohort).values[2].values[5].length == 4


# 5. Reflection 

# This was a pretty neat challenge (and it WAS a challenge)!  At first, 
# I was confused about how to write the test.  But once I saw how the
# tests were done from week 3's group challenge, I had a better idea of
# what to do.  I learned quite a few things about the relationship between
# hashes and arrays.  I also learned a cool labeling trick from Code School's
# Ocean of Objects lesson (it wss under Javascript, but easily applied to
# Ruby).  I wasn't sure exactly what tests to include or how much of it to
# include.  In addition to thinking about HOW I was going to get from point
# A to point B via the pseudocode, the driver test code really helped
# me think ahead about what sort of code STRUCTURE I wanted to write.
# I spent a lot more time planning on paper than I did on the keyboard,
# but it was nice to be able to implement my ideas once I had them all 
# planned out.