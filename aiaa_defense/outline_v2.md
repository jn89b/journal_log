## Slide 1 Title

## Slide 2  Motivation/Background
- Pull out Applications of UAS EW and experiment 
- Waypoint navigation strategies back in 2003/2009
- Can we do better? Generate optimal trajectories given aircraft system and configuration of effector (compare to baseline waypoint generation) 
- Real time generation?

## Slide 3 - (Methodology) High Level Overview 
- Navigation Stack for detection:
    - Decoupled outside of scope 
- Guidance/Planning Stack: 
    - Infiltration - Global Planning 
    - Trajectory Generation - Local Planning 
    - Decision Making Processes 
- For sake of brevity in this presentation will talk about the trajectory generation processes

## Slide 4 - (Methodology) Optimal Control and Model Predictive Control Overview
- Show General equations of optimal control 
- Model Predictive Control first time step trajectory generation  
- General vanilla trajectory generation for aircraft with video 

## Slide 5 - (Methodology) Directional Effector Derivation Trajectory Generation 
- Custom cost function with directional effector
- Visualization of effector or diagram with the exponential functions 
- Videos/Gifs of trajectory generation for point mass

## Slide 6 - (Methodology) Omni/Toroid Effector Trajectory Generation 
- Custom cost function with directional effector
- Visualization of effector or diagram with the exponential functions 
- Videos/Gifs of trajectory generation for point mass

## Slide 7 -  (Simulation Set up) 
- Show High level architecture of ROS Pipeline2 
- Discuss how it all flows together
- Simulate engagement trajectories and compare to nominal waypoint generation   
- Emphasis that this is connected to flight stack and testing with actual embedded sysetm with SITL 

## Slide 8 - (Simulation Results/Discussion)
- Show trajectories and replays for no obstacle and obstacle avoidance and with different effector considerations  
- Rengagement capabilities (just in case)

## Slide 9 - Post processing results
- "Nominal damage done to system" 
    - Compare between just vanilla waypoint vs the optimal control/MPC applications
- Solution time - subplots or tabulate
- Gradient analysis, convergence to some minima 

## Slide 10 - Future work 
- LOTS 
- N trajectoriess - which one is the best? 
- System Identification using ML and first order derivations - Time constant modeling with error, attitude command * some time_constant with error, can we update our integrator model
- We have dynamic threat avoidance cost function - simulate percieved trajectories of adversaries, right now using nominal PN trajectories  


## Slide 11 - End 


# To dos 
- [x] Log and simulate real time trajectory with effector 
- Results for:
    - Time on Target
    - Tracking peformance based on perfect ideal location 
    - How align/on target was I?