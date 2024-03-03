# Setting up the Simulation

## Repos needed
- drone_ros https://github.com/jn89b/drone_ros.git
- ros_mpc https://github.com/jn89b/ros_mpc.git
- pew_pew https://github.com/jn89b/pew_pew
- rviz_drone https://github.com/jn89b/rviz_drone 


## Mavros and Arduplane
- run the shell_scripts/run_ardu_mavros.sh script
- make sure to set the streamrate to 50 on the arduplane sitl pane do that by entering the following command
```
set streamrate 50
```
- To make the aircraft takeoff do the following commands:
```
arm throttle
mode takeoff
takeoff 50 #set the takeoff to 50 meters
mode guided #switch the aircraft to guided mode to do the autonomous stuff
```

## Trajectory 
```
ros2 run rviz2 rviz2 # 
ros2 launch ros_mpc vis_all_traj.launch.py #visualizes all your trajectories  
ros2 launch ros_mpc all_traj.launch.py #runs all the trajectories 
ros2 run drone_ros Drone.py #runs the drone command to send commands to follow a specific trajectory 
```


## Testing 
```
ros2 run rviz2 rviz2 # 
ros2 launch ros_mpc vis_all_traj.launch.py #visualizes all your trajectories   
ros2 run drone_ros Drone.py #runs the drone command to send commands to follow a specific trajectory 
ros2 run pew_pew effector_node.py #runs single effector node
ros2 run your_trajectory_node
```