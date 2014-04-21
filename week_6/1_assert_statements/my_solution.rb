# U2.W6: Testing Assert Statements


# I worked on this challenge by myself


# 1. Review the simple assert statement

# def assert
#   raise "Assertion failed!" unless yield
# end
 
# name = "bettysue"
# assert { name == "bettysue" }
# assert { name == "billybob" }

# 2. Pseudocode what happens when the code above runs
# returns nil when the block on line 14 is yielded to
# but raises an error message "Assertion failed!" when 
# the block on line 15 is yielded to


# 3. Copy your selected challenge here

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

cohort = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "zz"]

# 4. Convert your driver test code from that challenge into Assert Statements

def assert
	raise "Assertion failed!" unless yield
end
 
assert { group_create(cohort).keys[0] == "unit1" }
assert { group_create(cohort).keys[1] == "unit2" }
assert { group_create(cohort).keys[2] == "unit3" }

assert { group_create(cohort).values[0].keys.length == 6 } # there are 6 groups
assert { group_create(cohort).values[1].keys.length == 6 } # there are 6 groups
assert { group_create(cohort).values[2].keys.length == 6 } # there are 6 groups
assert { group_create(cohort).values[0].keys == ["group1", "group2", "group3", "group4", "group5", "group6"] } # array of the group names
assert { group_create(cohort).values[1].keys == ["group1", "group2", "group3", "group4", "group5", "group6"] } # array of the group names
assert { group_create(cohort).values[2].keys == ["group1", "group2", "group3", "group4", "group5", "group6"] } # array of the group names
assert { group_create(cohort).values[0].values.flatten.length == 27 } # size of cohort
assert { group_create(cohort).values[1].values.flatten.length == 27 } # size of cohort
assert { group_create(cohort).values[2].values.flatten.length == 27 } # size of cohort

# for 27 names, there should be 5 people each in groups 1, 2, and 3
# for 27 names, there should be 4 people each in groups 4, 5, and 6
assert { group_create(cohort).values[0].values[0].length == 5 }
assert { group_create(cohort).values[0].values[1].length == 5 }
assert { group_create(cohort).values[0].values[2].length == 5 }
assert { group_create(cohort).values[0].values[3].length == 4 }
assert { group_create(cohort).values[0].values[4].length == 4 }
assert { group_create(cohort).values[0].values[5].length == 4 }
assert { group_create(cohort).values[1].values[0].length == 5 }
assert { group_create(cohort).values[1].values[1].length == 5 }
assert { group_create(cohort).values[1].values[2].length == 5 }
assert { group_create(cohort).values[1].values[3].length == 4 }
assert { group_create(cohort).values[1].values[4].length == 4 }
assert { group_create(cohort).values[1].values[5].length == 4 }
assert { group_create(cohort).values[2].values[0].length == 5 }
assert { group_create(cohort).values[2].values[1].length == 5 }
assert { group_create(cohort).values[2].values[2].length == 5 }
assert { group_create(cohort).values[2].values[3].length == 4 }
assert { group_create(cohort).values[2].values[4].length == 4 }
assert { group_create(cohort).values[2].values[5].length == 4 }

# 5. Reflection 
# This was a nice introduction to testing with assert statements. Most of 
# it was pretty straight forward.  I puprposely chose one of my previous 
# challenges whose testing was long in length so that I could get a lot of 
# practice typing out assert statements.  As I have mentioned in the past, 
# it's not so much how to write a test that I find difficult; rather, it's 
# trying to figure out what tests are useful/needed and most beneficial to 
# the program at hand.  This is an area in which I feel I am lacking.  I will
# continually try to improve in this area over the next few weeks.