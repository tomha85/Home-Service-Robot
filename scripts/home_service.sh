#!/bin/sh

xterm -e "roslaunch my_robot tom_turtle.launch" &
sleep 5
xterm -e "roslaunch my_robot amcl_map.launch" &
sleep 5
xterm -e "roslaunch turtlebot_rviz_launchers view_navigation.launch"&
sleep 5
xterm -e "rosrun pick_objects pick_objects"&
sleep 5
xterm -e "source /home/workspace/catkin_ws/devel.bash;rosrun add_markers add_markers"

