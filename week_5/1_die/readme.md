[Week 5 Home](./)

# U2.W5: Die Class 1: Numeric


## Learning Objectives
- Break down problems into implementable pseudocode 
- Implement a basic Ruby class and identify when to use instance variables
- Use if/else statements, string methods, while/until loops, Enumerable#each methods
- Find and use built-in Ruby methods to solve challenges
- Explain how instance variables and methods represent the characteristics and actions of an object

## Background
Before starting this challenge, you will want to read a bit about classes and ruby objects. Try these: [Writing our own Class in Ruby](http://rubylearning.com/satishtalim/writing_our_own_class_in_ruby.html), [Ruby Classes and Objects](http://www.tutorialspoint.com/ruby/ruby_classes.htm), or read about classes in [The Well-Grounded Rubyist (Book)](http://www.manning.com/black2/). You definitely want to research this before you try it. Classes are a different thing altogether and may be difficult to understand at first. Don't worry, you'll get lots of practice this week!

Implement a basic `Die` class which can be initialized with some number of sides.  We can then roll the die, returning a random number.  It should work like this:

```ruby
die = Die.new(6)
die.sides # returns 6
die.roll # returns a random number between 1 and 6
```

If we pass `Die.new` a number less than `1`, we should raise an `ArgumentError`.  This is done using the `raise` keyword.  See the [ArgumentError documentation](http://apidock.com/ruby/ArgumentError) for how to do this.

Use the [Ruby Docs](http://www.ruby-doc.org/) to see how to return a random number. 

## Directions
 
1. Run the Rspec tests, and then translate at least 3 of the tests into [Driver Test Code](../references/driver_code.md) and include it in the driver code section. If the tests are failing to catch a problem, try writing your own driver test code for it. 
2. [Pseudocode](../references/pseudocode.md)
3. [Initial Solution](../references/initial_solution.md)
4. [Refactored Solution](../references/refactoring.md)
5. [Reflect](../references/reflection_guidelines.md)
6. Sync your changes (push your solution) to Github
7. [Review](../references/review.md)