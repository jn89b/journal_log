## Introduction/Motivation 

## High Level Overview
- Visuals:
    - Aesthetic flow chart showing the pipe line 
    - Visuals of global planner with local planner based on scenario we experience
    - Add a video to demmonstrate 

## Global Planner (2/3 slides)
- What to talk about:
    - Algorithm approach, pseducode 
    - Optimal Approach Vectors:
        - Ray trace to find a general idea of best approaches
        - Run an optimal trajectory control to finalize the results
    - Connect to global planner and go

- Visuals:
    - Optimal Approach Vectors 
    - Global Planner with different environments
    - Move expansion animation

## Local Planner
- General optimization Problems
    - Obstacle constraints 
    - Kinematic expresion of aircraft, expand to 3D (Zurich)
- Enhance with:
    - Dynamic Obstacles
    - Effector Profile with nominal values:
        - Time constraint (Based on Weintraub's stuff)
        - Time on target 
    - Trajectory Tracking of waypoints

- Visuals:
    - Obstacle avoidance with aircraft general
    - Dynamic Threats:
        - visualization of avoidance
    -Effectors:
        - Time on target
        - Constraint handling for time based on 

- Crazy Idea:
    - Decision making processes state machine for now:
        - Go to waypoint 
        - Dynamic avoidance 
        - Approach target with effector 
    - Motion primitives using optimal control
        - Chain together moves 

## Simulation/Scenarios
- Effector with static environment
- Effector with dynamic environments/threats

## Results 
- Trajectory Tracking with different performance parameters 
    -  Was I successful or not?

## Future Work


# What Needs to be done
## Overall
- Powerpoint visuals and slide deck 
- Integrate with ROS2

## Global Planner 
- Normalize cost function
- Length constraints  
- Improve the trajectory of the threats 
- Have some static plots of the waypoints 

## Local Planner
- Trajectory planner that has:
    - [x] obstacles
    - [x] threats
    - [x] built in cost function for avoidance 
    - [x] built in cost function to minimize time
    - [x] effector considerations
        - parameter for directional or omnidirectional
    






https://github.com/coin-or-tools/ThirdParty-HSL/issues/15