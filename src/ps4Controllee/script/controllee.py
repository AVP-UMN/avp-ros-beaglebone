#!/usr/bin/env python
import rospy
from robotControl import Robot
from ps4Controllee.msg import control_data
from subprocess import call

robot = Robot()
def callback(data):
	global robot
	result = data
	if result.type == "left_joy":
		#print "Controllee receice left_joy : value : {}".format(result.value)
		#print result.value	
		robot.turn(result.value)
	elif result.type == "l2":
		#print "Controllee receice l2"
		robot.speed(result.value * -1)
	elif result.type == "r2":
		#print "Controllee receice r2"
		robot.speed(result.value)
		f.close()
		
def main():
	rospy.init_node('ps4Controllee')

	rospy.Subscriber("ps4_control", control_data, callback)

	rospy.spin()
	
if __name__ =='__main__':
	main()
