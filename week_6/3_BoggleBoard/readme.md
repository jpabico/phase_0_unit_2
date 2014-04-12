[Week 6 Home](../)

# U2.W6: Create a BoggleBoard Class


## Learning Objectives
- Create, access, and traverse nested data structures
- Implement a basic Ruby class and identify when to use instance variables

## Background
Create a class `BoggleBoard` that includes the functionality of your methods from the [Boggle Board](../../week_5/4_boggle_board/my_solution.rb) challenge you completed last week. 

To do this, take a look at the methods you've created.  How can they be integrated into your BoggleBoard class?  What needs to change?


## Directions
 
####1. Transform your [Driver Test Code](../../references/driver_code.md) so that it creates a new board object. You'll need to pass the original 2D array as an argument. (Let's calle that `dice_grid` becasue boggle_board is going to be its own object now!) This is already in your [solution](my_solution.rb) file. How does the `boggle_board` object hold the `dice_grid`?
####2. Implement your methods
One method at a time, create a test to access your new `boggle_board` object. The first method should be `#create_word`. (Don't get thrown off with the `#method_name` syntax, using `#` before a method name is a ruby convention.) Write out a test with it's expectation in a comment, and then create the method in the `BoggleBoard` class. Try these coordinates: (1,2), (1,1), (2,1), (3,2).

Then, write methods for `#get_row` and `#get_col`.  Can you interact with the boggle_board object and get the values you expect?  Now print out all the rows and columns of the board as strings. You should end up with 8 four letter words. Are there any real words shown? Add your total output as a comment in your gist.
####3. Now write some driver code to access an individual coordinate in your `boggle_board` object. Make this as simple as possible. Can you access the "k" character at row 3 column 2?
####4. Bonus: Create a `#get_diagonal` method
Just like the `#get_col` or `#get_row` method, the `#get_diagonal` method should return an array of values, but it will need 2 coordinates entered to define the diagonal.  Error checking to make sure the coordinates are actually a diagonal would probably be a good idea.
####5. [Refactored Solution](../../references/refactoring.md)
####6. [Reflect](../../references/reflection_guidelines.md)
You just made a transition from procedural programming to object-oriented programming!  How is the implementation different?  What are the benefits to using the Object Oriented approach (even if it is a bit more code?) Make sure to include your reflection in your gist.
####7. Sync your changes (push your solution) to Github
####8. [Review](../../references/review.md)