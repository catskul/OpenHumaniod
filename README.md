#### TO INSTALL:
This assumes you have DRC related packages already installed. If you don't then go here: http://gazebosim.org/wiki/DRC/Install

Otherwise:

    ./install.sh
    
Then setup the normal ros way with:

    . setup.bash

#### TO BUILD:    
    
    rosmake re2uta_atlasCommander

#### TO DEMO:

##### DEMO BALANCING:
From 3 separate terminals, source the setup in each
    . setup.bash
    
Then in #1:
    roslaunch atlas_utils atlas_sandia_hands.launch
    
Then in #2:
    roslaunch re2uta_atlasCommander atlasCommander_nnCapture.launch  
    
That will start an instance of rviz with interactive markers.
    
Once it's up and running in #3:

    rostopic pub /commander/walkto re2uta_atlasCommander/WalkPlan \
    "header:
      seq: 0
      stamp:
        secs: 0
        nsecs: 0
      frame_id: ''
    start_swing_foot: 0
    goal_poses:
    - position:
        x: 0.0
        y: 0.0
        z: 0.0
      orientation:
        x: 0.0
        y: 0.0
        z: 0.0
        w: 1.0"
