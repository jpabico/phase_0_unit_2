[Week 5 Home](./)

# U2.W5: Die Class 1: Numeric


## Learning Objectives
- objective 1
- objective 2
- objective 3

## Background
Implement a basic `Die` class which can be initialized with some number of sides.  We can then roll the die, returning a random number.  It should work like this:

```ruby
die = Die.new(6)
die.sides # returns 6
die.roll # returns a random number between 1 and 6
```

If we pass `Die.new` a number less than `1`, we should raise an `ArgumentError`.  This is done using the `raise` keyword.  See the [ArgumentError documentation](http://apidock.com/ruby/ArgumentError) for how to do this.

Use the Ruby Docs to see how to return a random number. 

## Directions
 
1. Write [Driver Test Code](../references/driver_code.md)
2. [Pseudocode](../references/pseudocode.md)
3. [Initial Solution](../references/initial_solution.md)
4. [Refactored Solution](../references/refactoring.md)
5. [Reflect](../references/reflection_guidelines.md)
6. Sync your changes (push your solution) to Github
7. [Review](../references/review.md)