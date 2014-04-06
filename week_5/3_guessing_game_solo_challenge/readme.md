[Week 5 Home](./)

# U2.W5: Build a Simple Guessing Game **SOLO CHALLENGE**


## Learning Objectives
- Break down problems into implementable pseudocode 
- Implement a basic Ruby class and identify when to use instance variables
- Use if/else statements, string methods, while/until loops, Enumerable#each methods
- Explain how instance variables and methods represent the characteristics and actions of an object

## Background

In this challenge you want to create a simple guessing game. Think in terms of when you were 7 and asked your friends to identify the number you were thinking. 

Your `GuessingGame` class should be initialized with an integer called `answer`.

Define an instance method `GuessingGame#guess` which takes an integer called `guess` as its input. `guess` should return the symbol `:high` if the `guess` is larger than the `answer`, `:correct` if the `guess` is equal to the `answer`, and `:low` if the `guess` is lower than the `answer`.

Define an instance method `GuessingGame#solved?` which returns `true` if the most recent `guess` was correct and `false` otherwise.

For example,

```ruby
game = GuessingGame.new(10)

game.solved?   # => false

game.guess(5)  # => :low
game.guess(20) # => :high
game.solved?   # => false

game.guess(10) # => :correct
game.solved?   # => true
```

Or

```ruby
game = GuessingGame.new rand(100)
last_guess  = nil
last_result = nil

until game.solved?
  unless last_guess.nil?
    puts "Oops!  Your last guess (#{last_guess}) was #{last_result}."
    puts ""
  end

  print "Enter your guess: "
  last_guess  = gets.chomp.to_i
  last_result = game.guess(last_guess)
end

puts "#{last_guess} was correct!"
```



## Directions
 
1. Run the Rspec tests, and then translate at least 3 of the tests into [Driver Test Code](../references/driver_code.md) and include it in the driver code section. If the tests are failing to catch a problem, try writing your own driver test code for it. 
2. [Pseudocode](../references/pseudocode.md)
3. [Initial Solution](../references/initial_solution.md)
4. [Refactored Solution](../references/refactoring.md)
5. [Reflect](../references/reflection_guidelines.md)
6. Sync your changes (push your solution) to Github
7. [Review](../references/review.md)