# U2.W4: Title here


# I worked on this challenge by myself

# 2. Pseudocode

# Input:

# The input is an array of names (strings)
# Output:

# The output is a hash with [key, val] of [units, groups]
# The groups themselves are hashes with [key, val] of [groups, array of names]

# Steps:

1) define a function called group_create with one argument (names_array)
2) define new hash for units
3) define number of units (for looping)
4) define new hash for groups
5) define number of groups (for looping)
6) shuffle names_array
7) define number of people per group (for looping)

# 3. Initial Solution

def group_create(names_array)
    
    unit_hash = Hash.new({})
    number_of_units = 3
    
    for h in 1..(number_of_units)
    
        unit_names = names_array.shuffle  #shuffle names
        n = names_array.length
        group_size = 4
        number_of_groups = n / group_size
        extras = n % group_size 
        group_hash = Hash.new([])
    
        for i in 1..( group_size + 1 )  # for each group...
            for j in 1..(number_of_groups)  # "deal out" one person per group
                group_hash["group"+ j.to_s] += [unit_names.pop].compact
                #thanks to Code School: Ocean of Objects for naming technique
            end
        end
        unit_hash["unit" + h.to_s] = group_hash
    end
    
    return unit_hash

end





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

# cohort = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "zz"]
# group_create(cohort)




# 5. Reflection 

