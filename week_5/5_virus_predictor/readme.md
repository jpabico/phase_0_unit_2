[Week 5 Home](../)

# U2.W5: Virus Predictor 


## Learning Objectives
- Identify and explain what code is doing
- Create, access, and traverse nested data structures
- Automate repetitive tasks using loops
- Define a method's responsiblity
- Identify and rewrite repetitive code
- Explain `private` and discuss when it would be used

## Background

The C.D.C. (Centers for Disease Control) is concerned about a recent form of deadly influenza. They've implemented the following program to predict the effect of the virus by state. Eventually they want to predict the spread of the virus, which is why that data is included.

The initial program is not very D.R.Y., but the program designer went on vacation and your boss needs the model to work efficiently so researchers can use it. You've been brought in to make the code more efficient and expandable for later features such as incorporating demographic data. 


## Directions
 
1. Run the code.  Look at the output.  Look at the input (it's in the other file).  Explain what the program is doing.
2. Write a comment explaining the require_relative statement - You should be somewhat familiar with this by now.
3. Take a look at the `state_data` file. What is going on with this hash? What does it have in it? (HINT: There are two different syntax used for hashes here. What's the difference?)
4. Comment each method and define it's responsibility.
5. New Feature: create a report for all 50 states, not just the 4 listed below.  Is there a DRY way of doing this?
6. Refactor the virus_effects method.  (HINT: what is the scope of instance variables?)
7. What is the purpose of "private". What happens if you move it elsewhere in the class?
8. Refactor the private methods predicted_deaths and speed_of_spread.  How can you make them more DRY?
9. BONUS: Access the population by calling it on the instance.