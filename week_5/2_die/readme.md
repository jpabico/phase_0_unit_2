[Week 5 Home](./)

# U2.W5: Die Class 2: Arbitrary Symbols


## Learning Objectives
- objective 1
- objective 2
- objective 3

## Background
Working off your previous `Die` class from [Die Class 1](http://socrates.devbootcamp.com/exercises/46), implement a new `Die` class which takes an array of strings as its input.  When `Die#roll` is called, it randomly returns one of these strings.  If `Die.new` is passed an empty array, raise an `ArgumentError`.  It should work like this:

```ruby
die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
die.sides # still returns the number of sides, in this case 6
die.roll # returns one of ['A', 'B', 'C', 'D', 'E', 'F'], randomly
```

Just to reiterate, in the previous exercise you passed in a number of sides, `sides`, and the labels were assumed to be the integers `1..sides`.  Now we're passing in a list of arbitrary labels.  We could use this to represent a [Dreidel](http://en.wikipedia.org/wiki/Dreidel) or [Boggle dice](http://en.wikipedia.org/wiki/Boggle), for example.

## Directions
 
1. Run the Rspec tests, and then translate at least 3 of the tests into [Driver Test Code](../references/driver_code.md) and include it in the driver code section. If the tests are failing to catch a problem, try writing your own driver test code for it. 
2. [Pseudocode](../references/pseudocode.md)
3. [Initial Solution](../references/initial_solution.md)
4. [Refactored Solution](../references/refactoring.md)
5. [Reflect](../references/reflection_guidelines.md)
6. Sync your changes (push your solution) to Github
7. [Review](../references/review.md)