# MATLAB HS12 – Research Plan 


> * Group Name:the_creepinators
> * Group participants names: Dario Kneubühler, Roman Müller, Anja Sutter, Ueli Wechsler
> * Project Title: Paperwork

## General Introduction

Every day many people pass through Lucerne train station and several simulation programs were implemented to study the interaction between geometry of the building and the passenger's flow. With the emergence of free newspapers (like "20 Minuten", "Blick am Abend"), this problem got a new dimension: If a commuter is heading towards the newspapers box he has to cross the other people's flow. Therefore we want to investigate how the position of the box effects the velocity and social flow.
We intend to use the layout of an existing situation to find the ideal arrangement of the newspaper box by manipulating its location.



## The Model

We intend to use the Social Force Model. Our independent variable is the position of a newspaper box. The dependent variable is the time a person needs on average to get through the bottle neck. In addition, we will as well play with the other initial parameters like number of people, rate of paper-takers, velocity of the pedestrians, and so on.


## Fundamental Questions

We will choose several different positions, run the simulations and then visually select the two most diverse options. In order to answer our question we will then compare these two different positions of a newspaper box: We will run the whole simulation for the two situations and evaluate the time per person for a given distance in dependence of varying initial parameters (pedestrians velocity, number of pedestrians, required time to pick up a newspaper, number of paper-takers, …).
The final output is a conclusion of how strongly a bad placement of paper boxes influence the pedestrian flow.




## Expected Results
We expect to get both a significant and a relevant difference between the options. Furthermore, we expect that a box positioned in the middle of a corridor (compared to a box standing at the edge) will slow down the passenger's flow if the number of paper-takers is low, but might be preferred if a high ratio of passengers is taking a newspaper, as a smaller part of the pedestrian flow has to be crossed to pick up a newspaper. Placing the box in the middle of the corridor could also result in a knot of people which would lead to a bottleneck situation, if the percentage of paper-takers is high.


## References 

Helbling, Dirk - Molnar, Peter (1995): Social Force Model for Pedestrians Dynamics

Helbling, Dirk et al. (2005): Self-Organized Pedestrian Crowd Dynamics: Experiments, Simulations, and Design Solutions

Schadschneider, Andreas et al. (2002): CA Approach to Collective Phenomena in Pedestrian Dynamics



## Research Methods

We intend to use the Social Force Model to simulate the pedestrian flow. A modification of the pedestrian simulation of the project: "MultiLevelEvacuation_with_custom_C_code " will be used for our program.




## Other

