# U2.W5: Bakery Challenge GPS

# I worked on this challenge with: Keenan Turner

# Our Refactored Solution

def bakery_num(num_of_people, fav_food)
    my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
    can_make = false

    my_list.each_key {|food_item| can_make = true if food_item == fav_food }
    raise ArgumentError.new("You can't make that food") if can_make == false
        
    fav_food_qty = my_list.values_at(fav_food)[0]
    if num_of_people % fav_food_qty == 0
        num_of_food = num_of_people / fav_food_qty
        return "You need to make #{num_of_food} #{fav_food}(s)."
    else
        if fav_food == "cake"
            cake_qty = num_of_people / my_list["cake"]   # first calculate cake required
            num_of_people %= my_list["cake"]
            pie_qty = num_of_people / my_list["pie"]   # second calculate pie required
            num_of_people %= my_list["pie"]
        else
            pie_qty = num_of_people / my_list["pie"]   # first calculate pie required
            num_of_people %= my_list["pie"]
            cake_qty = num_of_people / my_list["cake"]   #second calculate cake required
            num_of_people %= my_list["cake"]
        end

        cookie_qty = num_of_people   #either way, calculate cookies required last
        return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
end

#DRIVER CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working. 
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 6 cake(s), and 5 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!

#  Reflection 

# This was a somewhat difficult challenge for me in terms of problem 
# solving and determining what each line of code did.  Of course, 
# this was partly due to the code purposely being "nonfriendly" and 
# largely refactorable (that was the point of the exercise, right?).  
# Luckily, I had a great partner who was patient and communicated his
# thoughts clearly to me.  He always made sure I understood what was
# going on and that we were always on the same page when it came to
# deciding what to refactor or analyzing the problem differently.
# This challenge was a good way to review what I knew about hashes.  
# It also reiterated how important it is to have readable, uncluttered 
# code so that future programmers who might need to update/change the 
# code can do so with the least amount of inconvenience.
