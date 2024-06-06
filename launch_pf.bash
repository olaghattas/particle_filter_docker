#!/bin/bash

source /home/particle_filter/install/setup.bash
ros2 launch aptags_tf_broadcast tf_broadcast_helper.launch.py &

sleep 10s

sleep 1
ros2 run particle_filter_mesh particle_filter_node &

# Wait for commands to finish
wait

