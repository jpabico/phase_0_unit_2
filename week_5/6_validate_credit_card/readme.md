[Week 5 Home](../)

# U2.W5: Class Warfare, Validate a Credit Card Number


## Learning Objectives
- Iterate through data structures
- Manipulate data within data structures
- Decompose a problem into smaller, easier to solve components
- Find and use built-in Ruby methods to solve challenges


## Background
Given a credit card number we should be able to validate whether it is valid based on the [Luhn algorithm](http://en.wikipedia.org/wiki/Luhn_algorithm).

While the word [algorithm](http://en.wikipedia.org/wiki/Algorithm) sounds scary you can just think of them as a series of steps you use to solve a specific problem.  An example algorithm:

>1. Heat water until boiling
>2. Add pasta
>3. If pasta cooked, strain

The above steps if followed explicitly give us cooked pasta!

For this challenge, we will need to break down the algorithm into the following steps. You will probably want to break these down into individual methods. 

1. Starting with the second to last digit, double every other digit until you reach the first digit

2. Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0)

3. If the total is a multiple of ten, you have received a valid credit card number!

```ruby
Example given 4563 9601 2200 1999
Origin: 4   5   6   3   9   6   0   1   2   2   0   0   1   9   9   9
Step 1: 8   5  12   3  18   6   0   1   4   2   0   0   2   9  18   9
Step 2: 8 + 5 + 1 + 2 + 3 + 1 + 8 + 6 + 0 + 1 + 4 + 2 + 0 + 0 +2+ 9 + 1 + 8 + 9
Step 3: 70 (total above) % 10 == 0
Step 4: Profit
```

Your class will need to return `true` or `false` when we call the `#check_card`.  Your class needs to be initialized with a credit card number that is exactly 16 digits otherwise you should receive an `ArgumentError`.

Make sure you pseudocode! These are big steps and they are a bit complicated, so break it down. You should be able to explain every line you write here!

## Directions
 
1. Run the Rspec tests, and then translate at least 3 of the tests into [Driver Test Code](../../references/driver_code.md) and include it in the driver code section. If the tests are failing to catch a problem, try writing your own driver test code for it. 
2. [Pseudocode](../../references/pseudocode.md)
3. [Initial Solution](../../references/initial_solution.md)
4. [Refactored Solution](../../references/refactoring.md)
5. [Reflect](../../references/reflection_guidelines.md)
6. Sync your changes (push your solution) to Github
7. [Review](../../references/review.md)
