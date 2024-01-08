#!/bin/bash

source /home/particle_filter/install/setup.bash

sleep 1
ros2 run particle_filter_mesh particle_filter_node &

# Wait for commands to finish
wait

