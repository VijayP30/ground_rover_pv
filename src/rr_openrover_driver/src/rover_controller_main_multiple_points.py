#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Point
from std_msgs.msg import Float64
from geometry_msgs.msg import Twist
import pandas
import pymap3d as pm
import math
from math import atan2
import time
import json
rospy.init_node("wayPointNavRTKrover", anonymous = True)
currentE=0.0
currentN=0.0
currentH=0.0
currentHeading=0.0

distanceTol=0.5
headingTol=0.10
pidScale=4.5
# speedNormal=0.5
speedNormal=0.3
# speedTurn=0.4
speedTurn = 0.2
wheelTrack=0.4
gpsreceived=0
base_station_location = []
base_cmdForward = Twist()

def update_location(data):
    global currentE,currentN,currentH
    currentE=data.x
    currentN=data.y
    currentH=data.z
    gpsreceived=1

def heading_update(data):
    global currentHeading
    currentHeading = data.data

def distance(enu_x, enu_y):
    return math.sqrt(pow(currentE - enu_x,2) + pow(currentN - enu_y,2))


enu_callback = rospy.Subscriber('/gps/enu_pose_best_fix',Point, update_location)
heading_callback = rospy.Subscriber("/roverheading",Float64, heading_update)
rover_cmd_vel_pub = rospy.Publisher("/cmd_vel", Twist, queue_size = 1)
time.sleep(30)
move_once = False
f = open('/home/ubuntu/Catkin_ws/src/rr_openrover_driver/src/goal_multiple.json')
data = json.load(f)
stop = 1.0
i = 1
while not rospy.is_shutdown():
    for i in data:
        goal_enu_json = (data[i][0],data[i][1])
        original_distance = distance(goal_enu_json[0],goal_enu_json[1])
        if not move_once:
            now = time.time()
            while time.time() - now < 2:
                base_cmdForward.linear.x=0.5
                base_cmdForward.linear.y= 0
                base_cmdForward.linear.z=0
                base_cmdForward.angular.x=0
                base_cmdForward.angular.y=0
                base_cmdForward.angular.z=0
                rover_cmd_vel_pub.publish(base_cmdForward)
            move_once = True
        while (abs(currentE-goal_enu_json[0])+abs(currentN-goal_enu_json[1])>distanceTol):
            destiHeading= atan2(goal_enu_json[1]-currentN, goal_enu_json[0]-currentE)
            if (distance(goal_enu_json[0],goal_enu_json[1]) <= (original_distance - stop + 0.025)) and (distance(goal_enu_json[0],goal_enu_json[1]) >= (original_distance - stop - 0.025)):
                dist1 = distance(goal_enu_json[0],goal_enu_json[1])
                print(original_distance - dist1, " meters from last stop")
                original_distance = dist1
                t_end = time.time() + 5
                while time.time() < t_end:
                    base_cmdForward.linear.x=0
                    base_cmdForward.linear.y= 0
                    base_cmdForward.linear.z=0
                    base_cmdForward.angular.x=0
                    base_cmdForward.angular.y=0
                    base_cmdForward.angular.z=0
                    rover_cmd_vel_pub.publish(base_cmdForward)
            if (abs(destiHeading-currentHeading)<headingTol):
                base_cmdForward.linear.x=speedNormal
                base_cmdForward.angular.z=0
                rover_cmd_vel_pub.publish(base_cmdForward)
            else:
                if (destiHeading<0):
                    destiHeading+=2*math.pi
                if (currentHeading<0):
                    currentHeading+=2*math.pi
                diff=destiHeading-currentHeading
                if diff<0:
                    diff+=(2*math.pi)
                if diff > math.pi:
                    diff=2*math.pi-diff
                    base_cmdForward.linear.x= speedTurn
                    base_cmdForward.angular.z= -(diff/math.pi)*pidScale
                    rover_cmd_vel_pub.publish(base_cmdForward)
                else:
                    base_cmdForward.linear.x= speedTurn
                    base_cmdForward.angular.z= (diff/math.pi)*pidScale
                    rover_cmd_vel_pub.publish(base_cmdForward)
            gpsreceived = 0
            rospy.sleep(0.1)
        print("Point Reached!!!") 
        t_end = time.time() + 3
        while time.time() < t_end:   
            base_cmdForward.linear.x=0
            base_cmdForward.linear.y= 0
            base_cmdForward.linear.z=0
            base_cmdForward.angular.x=0
            base_cmdForward.angular.y=0
            base_cmdForward.angular.z=0
            rover_cmd_vel_pub.publish(base_cmdForward)
        destiHeading+=math.pi
        while (abs(destiHeading-currentHeading)>headingTol):
            base_cmdForward.linear.x = 0.2
            base_cmdForward.angular.z = 0.2 * i
            rover_cmd_vel_pub(base_cmdForward)
        i = i*-1
        base_cmdForward.linear.x = 0
        base_cmdForward.angular.z = 0
        rover_cmd_vel_pub(base_cmdForward)
    print("Path Completed")
    f.close()
    rospy.spin()
