# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge by myself

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode
# define a method called create_word that takes two inputs (the Boggle 
# board and a set of coordinates)
# locate a letter based on its array index location
# store letters in an array
# join letters in the array
# return the array as a single string of letters joined

# Initial Solution
def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
end

# Refactored Solution
# I didn't refactor anything because I couldn't find a more compact way
# to rewrite the code

# DRIVER TESTS GO BELOW THIS LINE
p create_word(boggle_board, [0,0], [1,0], [2,1], [3,2], [3,3], [2,3])  == "bicker"
p create_word(boggle_board, [3,0], [3,1], [2,1], [3,2], [2,2], [3,3])  == "tackle"

# Reflection 
# Pretty straight forward.  I had a little fun and tried to pick 
# difficult, meandering words.  One big thing that I learned was how 
# to pass several argument inputs (like the case for the coordinates).  
# I have a feeling that is going to come in handy in the future.  
#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
# define a method called get_row that takes one input 
# (a number representing the row of interest)
# locate a row based on its array index location
# return the row array

# Initial Solution
def get_row(row)
	boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
	return boggle_board[row]
end


# Refactored Solution
# I might have been able to refactor my code if I had changed
# boggle_board into a global variable.  But from what I have read, 
# it is not desirable to have a lot (or any) global variables.
# Perhaps I could have redefined the method as having 2 arguments
# rather than just one.  Then I wouldn't have to change boggle_board
# into a global variable.  But the directions clearly ask for only
# 1 argument.

# DRIVER TESTS GO BELOW THIS LINE
p get_row(0) == ["b", "r", "a", "e"]
p get_row(1) == ["i", "o", "d", "t"]
p get_row(2) == ["e", "c", "l", "r"]
p get_row(3) == ["t", "a", "k", "e"]

# Reflection 
# It took me a while to decide if I should redefine the method to take
# two arguments instead of one.  It also took me a while to decide not
# to redefine boggle_board as a global variable.  I guess these are 
# judgment calls on the part of the developer.  I have a feeling that
# it would be a bad thing not to go by the specifications.  If I were
# part of a bigger team and this was only a part of the project, I 
# wouldn't be able to just redefine the specs as I felt fit.  Otherwise,
# my part of the code might not work with everyone else's.


#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
# define a method called get_col that takes one input 
# (a number representing the column of interest)
# locate the letters of a column based on their array index 
# location
# return the letters in an array that corresponds to the
# column of interest

# Initial Solution
def get_col(col)
	boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]
	return boggle_board.map { |x| x[col] }
end

# Refactored Solution
# I didn't refactor anything because I couldn't find a more compact way
# to rewrite the code

# DRIVER TESTS GO BELOW THIS LINE
p get_col(0) == ["b", "i", "e", "t"]
p get_col(1) == ["r", "o", "c", "a"]
p get_col(2) == ["a", "d", "l", "k"]
p get_col(3) == ["e", "t", "r", "e"]

# Reflection 
# Again, pretty straight forward.  This was a fun challenge
# overall.  I like how this assignment was more "visual" than 
# other assignments (the geometry of the output was important).
# It gives me a sense of how complicated it might be to program
# games that are simple to learn and play in a physical game
# board form.