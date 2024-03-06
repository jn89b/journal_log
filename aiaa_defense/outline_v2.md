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

# Data sets to use

## General Comparisoin
- For comparison of bang bang, slow velocity and custom directional cost function use these datasets:
    - bang_bang_2 
    - direct_traj_18
    - slow_slow_3
    - Emphasis we can still get there fast, but slow down on approach to target, and also maximize onbore sight 

## Single Obstacle avoidance 
- For obstacle avoidance to goal target consider these datasets:
- Note used a 20 meter effector but we can close 5 meters (DANGEROUS), 10-13M meter realistic,
- Note the diameter of target is one meter, need to project the face of we what we are trying to shoot 
    - slow_slow_9
    - direct_traj_26
    - bang_bang_8
- Results for these are as follows:
```
This is direct_traj_26
Time of engagement: 1.4450085163116455 seconds
Number of shots: 1445.0085163116455
Total time: 32.14950728416443 seconds

This is bang_bang_8
runfile('/home/justin/ros2_ws/src/drone_ros/drone_ros/log/data_analysis.py', wdir='/home/justin/ros2_ws/src/drone_ros/drone_ros/log')
Reloaded modules: DataParser
Time of engagement: 1.2619678974151611 seconds
Number of shots: 1261.9678974151611
Total time: 23.526413679122925 seconds

This is slow_slow_9
Time of engagement: 1.2828295230865479 seconds
Number of shots: 1282.8295230865479
Total time: 45.38232707977295 seconds
```
## Showcase stuff
- Clustered environment close to goal location check out the dataset:
    -  walled_direct_traj_3 hit from 45 degree angle SW 
    -  walled_direct_traj_4 hit from 90 degree angle SOUTH
    - 'walled_obstacles' # obstacle config

## Obstacle avoidance 
- Check out these datasets:
    - 'obs_avoid_17', 'obs_avoid_18', 'obs_avoid_19'
    - 'obstacle_config_1'#obstacle config
    - 'obs_avoid_22' 
    - 'obstacle_config_2''#obstacle config


## Omnidirectional 
- Simple example check out this dataset:
    - 'omni_traj_14'
- Avoidance 
    - multi_omni_avoid_3 
    - multi_omni_avoid_config
    - multi_omni_avoid_19
    - omni_avoid_another_one