# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself

# 2. Pseudocode

# define BoggleBoard class
# initialize instance variables @boggle_board
# define create_word method that takes multiple coordinate arguments
# coordinates locate string chars and pushes into an empty array
# outputs word as a string
# define get_row method that takes one integer argument (row of interest)
# outputs row of interest as an array
# define get_col method that takes one integer argument (column of interest)
# outputs column of interest as an array
# define get_diagonal method that takes 2 coordinate arguments
# checks to see if coordinates actually lie in diagonal 
# outputs diagonal of interest (if exists) as an array

# 3. Initial Solution
class BoggleBoard

	def initialize(board)
		@board = board
	end

	def create_word(*coords)
	 	coords.map { |coord| @board[coord.first][coord.last]}.join("")
	end

	def get_row(row)
		return @board[row]
	end

	def get_col(column)
		return @board.map { |x| x[column]}
	end

	def get_diagonal(coord1, coord2)
		diag_array = []
		if (coord1.first==coord1.last) && (coord2.first == coord2.last)
			for i in 0..3
				diag_array << @board[i][i]
			end
			return diag_array
		elsif (coord1.first + coord1.last == 3) && (coord2.first + coord2.last == 3)
			for j in 0..3
				diag_array << @board[j][3-j]
			end
			return diag_array.reverse
		else
			return "Those 2 coordinates don't belong to the same diagonal"
		end
	end

 end
  
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)
 


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
# create driver test code to retrieve a value at a coordinate here:
# implement tests for each of the methods here:
def assert
	raise "Assertion failed!" unless yield
end

assert { boggle_board.get_row(2).length == 4 }
assert { boggle_board.get_col(3).length == 4 }
assert { boggle_board.class != dice_grid.class }
assert { boggle_board.create_word([2,1],[1,1],[2,2],[1,3]) == "colt"}
assert { boggle_board.create_word([0,0],[0,1],[1,0],[2,1],[3,2]) == "brick"}
assert { boggle_board.get_diagonal([1,1],[3,3]) == ["b","o","l","e"] }
assert { boggle_board.get_diagonal([1,1],[3,2]) == "Those 2 coordinates don't belong to the same diagonal" }
assert { boggle_board.get_diagonal([3,0],[1,2]) == ["t","c","d","e"] }
assert { boggle_board.get_diagonal([3,0],[1,3]) == "Those 2 coordinates don't belong to the same diagonal" }


# 5. Reflection 