# Set up Build Environment
- Follow the https://ardupilot.org/dev/docs/building-setup-linux.html
- Follow it up all the way to install some required packages 
- Once done do the following command:
```
sudo apt install gcc-arm-none-eabi
```

# Custom Ardupilot Parameters
- Follow the instructions in this website to set new parameters https://ardupilot.org/dev/docs/code-overview-adding-a-new-parameter.html

# Compiling Code and Flashing Pixhawk with custom code (Linux)
- Follow this link to build the custom firmware code https://github.com/ArduPilot/ardupilot/blob/master/BUILD.md
- You will use waf configure, keep note of what type of board you will be using for us it will be :
```
./waf configure --board CubeBlack      # Hex/ProfiCNC Cube Black (formerly known as Pixhawk 2.1)
./waf plane                             # Build the code for fixed wing
```

# Load Lua Scripts (If you want to use RC Switch)
- https://ardupilot.org/copter/docs/common-lua-scripts.html
- Upload your lua script by using Mission Planner
- Follow this link to configure RCX_option to map it to your lua script https://ardupilot.org/copter/docs/common-auxiliary-functions.html
- https://ardupilot.org/copter/docs/common-lua-scripts.html
- Basically on Mission Planner you need to go to the paramter list and set:
    - RC7_OPTION to 300 to listen to a script