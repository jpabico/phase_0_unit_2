[Week 6 Home](../)

# U2.W6: Create A Car Class from User Stories

## Learning Objectives
- Identify the attributes and methods of a class based on user stories
- Translate a user story into driver code and solutions
- Explain how data structures and classes can model real-world objects


## Background
You've delved into object-oriented programming this week. You've created a class based on pre-defined driver code and user stories. You've converted a functional program into an object-oriented program. You've also created driver code to interact with an existing object's class.

In this challenge, we're going to tackle the trickier task of creating a class with only user stories by taking a real world object and translating it into ruby.

You are tasked with creating a `Car` object that is to operate in the context of a pizza delivery video game. (Exciting!) Review the user stories below to get an idea of the class structure.

- As a video game player, I want to be able to create a new car and set it's model and color so I can customize it in the video game.
- As a video game player, I need to be able to define a distance to drive so I can follow directions appropriately.
- As a video game player, I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.
- As a video game player, I want to be able to turn left or right so I can navigate a city and follow directions.
- As a video game player, I want to be able to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road. 
- As a video game player, I want to keep track of the total distance I have travelled, so I can get paid for mileage.
- As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.
- As a video game player, I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.

What are the characteristics associated with the car?  These are your attributes.  What are the actions associated with your car?  These are your methods. 

## Directions

1. Create a simple list of the attributes and methods (don't worry about your class structure yet!)  Try to be explicit and show if your methods are receiving any parameters in your [Pseudocode](../references/pseudocode.md) section. 
2. Write [Driver Test Code](../references/driver_code.md) based on the directions listed: 
  - Create a new car of your desired model and type  
  - Drive .25 miles (speed limit is 25 mph)  
  - At the stop sign, turn right  
  - Drive 1.5 miles (speed limit is 35 mph)  
  - At the school zone, check your speed   
  - Slow down to speed limit 15 mph  
  - Drive .25 miles more miles  
  - At the stop sign, turn left    
  - Drive 1.4 miles (speed limit is 35 mph)  
  - Stop at your destination  
  - Log your total distance travelled  
Notice how the writing out of your driver code can help you to name your methods more concisely.  Also notice how you are getting a much better idea of what your class looks like and what is happening under the hood. (again, no pun intended) 
3. Using your driver code to fill out the class' innards[Initial Solution](../../references/initial_solution.md)
4. Add functionality We all know that pizza delivery cars carry a whole bunch of pizzas, and this one has a super cool insulated compartment for keeping the pizzas hot. Include this feature in your car class. The only information about the pizzas you will be concerned with is the type of pizza, so keep things simple. To make things especially convenient, let's add a feature to your car to be able to get the next pizza to be delivered.  (This should be implemented [FIFO](http://en.wikipedia.org/wiki/FIFO) so nobody gets a cold pizza, but it's your call).
5. Create a new class for pizza. Get creative and make your pizza an actual object!  Perhaps the pizza can be gluten-free or vegetarian (the pizza place is in SF after all).  What methods would you want to add to the pizza class?
6. [Refactor](../../references/refactoring.md) your code!
7. [Reflect](../../references/reflection_guidelines.md)
8. Sync your changes (push your solution) to Github
9. [Review](../../references/review.md)