#!/bin/bash
#This file is made to start ros automatically at boot
#Authored by Henry Wilson
#Replaces the jackal 14.04 start system
#All variables set up in ~/.bashrc.
#These include: JACKAL_BB2, JACKAL_LASER, JACKAL_LASER_HOST, etc.
export ROSUSER=chrislab
export ROSENV=CHRISLab
source /home/$ROSUSER/$ROSENV/devel/setup.bash

roscore > /dev/null &
sleep 5 &&
roslaunch jackal_base base.launch > /dev/null &
sleep 5 &&
roslaunch jackal_bringup new_accessories.launch > /dev/null &
