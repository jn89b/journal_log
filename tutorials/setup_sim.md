# Setting up the Simulation

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


