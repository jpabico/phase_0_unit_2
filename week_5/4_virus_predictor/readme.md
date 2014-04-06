[Week 5 Home](./)

# U2.W5: Virus Predictor


## Learning Objectives
- objective 1
- objective 2
- objective 3

## Background

The C.D.C. (Centers for Disease Control) is concerned about a recent form of deadly influenza. They've implemented the following program to predict the effect of the virus by state. Eventually they want to predict the spread of the virus, which is why that data is included.

The initial program is not very D.R.Y., but the program designer went on vacation and your boss needs the model to work efficiently so researchers can use it. You've been brought in to make the code more efficient and expandable for later features such as incorporating demographic data. 


## Directions
 
1. Run the code.  Look at the output.  Look at the input (it's in the other file).  Explain what the program is doing.
2. Write a comment explaining the require_relative statement - You should be somewhat familiar with this by now.
3. Comment each method and define it's responsibility.
4. New Feature: create a report for all 50 states, not just the 4 listed below.  Is there a DRY way of doing this?
5. Refactor the virus_effects method.  (HINT: what is the scope of instance variables?)
6. What is the purpose of "private". What happens if you move it elsewhere in the class?
7. Refactor the private methods predicted_deaths and speed_of_spread.  How can you make them more DRY?
8. BONUS: Access the population by calling it on the instance.