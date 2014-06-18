#!bin/sh
sudo -s << export ROS_MASTER_URI=http://avp-pc:11311
	source /opt/ros/hydro/setup.sh
	source ~/avp-ros/devel/setup.sh
	rosrun ps4Controllee controllee.py 
