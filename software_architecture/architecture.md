# What do I want
- I want to be able to set aircraft parameters
- I want to be able to set initial conditions of aircraft
- I want to be able to reset the aircraft simulation
- I want to be able to control the aircraft through attitude and airspeed commmands
- I want to be able to generate different aircraft and run guidance algorithms with them
- I want to be able to visualize the aircraft training/scenarios if needed


## Chunking it down
- Integrate JSBIM with MPC controller and evaluate how it works, keep in mind we want to integrate simulation environment with MPC 
https://github.com/heronsystems/gym-jsbsim-f16/blob/master/gym_jsbsim/jsbsim_env.py


## Once I train the model I can deploy it and have it make decisions for me

# Simulation Architecture
- Two simulation pipelines both decent fidelity
    - One with JSBSIM 
    - One with Ardupilot using ROS2 


## JSBSIM architecture
- Need to open the interface to send commands to the flight controller while running the simulator
- Need to be able to visualize the the trajectories of the UAS during training process
