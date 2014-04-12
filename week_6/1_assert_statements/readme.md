[Week 6 Home](../)

# U2.W6: Testing with Assert Statements

## Learning Objectives
- Translate driver test code into assert statements

## Background

In earlier challenges, we explored using driver code tests to clearly define the input and output of a method.  The tests were usually of the form:

```ruby
puts is_fibonacci?(44) == false
```

And showed if the code was working correctly by printing `true` or `false`.

This kind of testing is extremely useful when debugging or adding new features (not to mention [TDD](http://en.wikipedia.org/wiki/Test-driven_development), which you'll work with later.)  Think about it: If any of your changes to your code happen to break a case that you have included in your tests, you'll know right away when your test code runs.  Any `false`'s and you know there's a problem, and can see the case that caused it.

Testing in this way is so fundamental to creating stable software, that many testing suites have been developed to address just this issue. (Rspec is one for ruby, and Jasmine for JavaScript.)

In this challenge, we're going to write our own simple `assert` method to get in the spirit of these testing frameworks.  This will take us one step closer to understanding Rspec (the code has been driving the red and greens of your exercises).  We'll also be flexing our muscles with blocks!

## Directions
 
####1. Translate an assert into Pseudocode 
Let's take a look at a basic `assert` method to help us test a block of code.  Take the code below and test it out in IRB or the terminal.

```ruby 
def assert
  raise "Assertion failed!" unless yield
end

name = "bettysue"
assert { name == "bettysue" }
assert { name == "billybob" }
```

What happens?  Write out in pseudocode what is happening with each assert method call.  Also describe succinctly what is happening with the error message. Conveniently, there's a line number that reflects which assert statement failed.

*If you need some brushing up on blocks and `yield`, read up about them [here](http://www.tutorialspoint.com/ruby/ruby_blocks.htm) and practice them on [Codecademy Blocks Tutorial](http://www.codecademy.com/courses/ruby-beginner-en-L3ZCI/0/1).*

####2. Translate your Driver Test Code into Assert Statements

In a previous challenges, you created Driver Test Code which looked something like:

```ruby
card_1 = CreditCard.new(1111111111111111)
card_1.check_card == false
card_2 = CreditCard.new(4408041234567893)
card_2.check_card == true
```

Copy your favorite challenge so far into the `my_solution.rb` file in this directory. Then convert either the driver code (or if you're adventurous, the RSpec) into assert statements. 

Practice using assert statements often this week in your challenges!

####3. [Reflect](../../references/reflection_guidelines.md)
####4. Sync your changes (push your solution) to Github
####5. [Review](../../references/review.md)