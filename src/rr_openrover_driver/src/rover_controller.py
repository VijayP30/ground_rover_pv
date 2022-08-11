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
headingTol= 0.10
pidScale=4.5
speedNormal=0.5
speedTurn = 0.4
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
f = open('/home/ubuntu/Catkin_ws/src/rr_openrover_driver/src/goal.json')
data = json.load(f)
goal_enu_json = (data["enu_x"],data["enu_y"])
f.close()
while not rospy.is_shutdown():
    original_distance = math.sqrt(pow(currentE - goal_enu_json[0],2) + pow(currentN - goal_enu_json[1],2))
    # original_dist = abs(currentE-goal_enu_json[0])+abs(currentN-goal_enu_json[1])
    stop_cnt = 1.0
    if not move_once:
        now = time.time()
        while time.time() - now < 2:
            #if (math.sqrt(pow(currentE - goal_enu_json[0],2) + pow(currentN - goal_enu_json[1],2))) <= (original_distance - stop_cnt + 0.1) and (math.sqrt(pow(currentE - goal_enu_json[0],2) + pow(currentN - goal_enu_json[1],2))) >= (original_distance - stop_cnt - 0.1):
                #stop_cnt += 1.0
                #t_end = time.time() + 5
                #while time.time() < t_end:
                    #print("Stopping")
                    #base_cmdForward.linear.x=0
                    #base_cmdForward.linear.y= 0
                    #base_cmdForward.linear.z=0
                    #base_cmdForward.angular.x=0
                    #base_cmdForward.angular.y=0
                    #base_cmdForward.angular.z=0
                    #rover_cmd_vel_pub.publish(base_cmdForward)
            base_cmdForward.linear.x=0.5
            base_cmdForward.linear.y= 0
            base_cmdForward.linear.z=0
            base_cmdForward.angular.x=0
            base_cmdForward.angular.y=0
            base_cmdForward.angular.z=0
            rover_cmd_vel_pub.publish(base_cmdForward)
        move_once = True
    # base_cmdForward.linear.x=0.5
    # base_cmdForward.linear.y= 0
    # base_cmdForward.linear.z=0
    # base_cmdForward.angular.x=0
    # base_cmdForward.angular.y=0
    # base_cmdForward.angular.z=0
    while (abs(currentE-goal_enu_json[0])+abs(currentN-goal_enu_json[1])>distanceTol):
            destiHeading= atan2(goal_enu_json[1]-currentN, goal_enu_json[0]-currentE)
            if (math.sqrt(pow(currentE - goal_enu_json[0],2) + pow(currentN - goal_enu_json[1],2))) <= (original_distance - stop_cnt + 0.05) and (math.sqrt(pow(currentE - goal_enu_json[0],2) + pow(currentN - goal_enu_json[1],2))) >= (original_distance - stop_cnt - 0.05):
                print("Stopping at: ",math.sqrt(pow(currentE - goal_enu_json[0],2) + pow(currentN - goal_enu_json[1],2)), "meters from goal")
                #cE_last = currentE
                #cN_last = currentN
                stop_cnt += 1.0
                #t_start = time.time()
                #while time.time() <= t_start + 1.25:
                #    # vel_msg = Twist()
                #    base_cmdForward.linear.x = base_cmdForward.linear.x - 0.5 * (time.time() - t_start)
                #    rover_cmd_vel_pub.publish(base_cmdForward)
                #    if base_cmdForward.linear.x <= 0:
                #        base_cmdForward.linear.x = 0
                #        rover_cmd_vel_pub.publish(base_cmdForward)
                #        break
                t_end = time.time() + 5
                while time.time() < t_end:
                    #if stop_cnt > 2:
                    #    stop_distance = math.sqrt(pow(currentE - cE_last,2) + pow(currentN - cN_last,2))
                    #    print("Stopping at: ", stop_distance, " meters")
                    #else:
                    base_cmdForward.linear.x=0
                    base_cmdForward.linear.y= 0
                    base_cmdForward.linear.z=0
                    base_cmdForward.angular.x=0
                    base_cmdForward.angular.y=0
                    base_cmdForward.angular.z=0
                    rover_cmd_vel_pub.publish(base_cmdForward)
            cE_last = currentE
            cN_last = currentN
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
    print(str(i) + " Point Reached!!!")
    print("Path Completed")
    base_cmdForward.linear.x=0.0
    base_cmdForward.linear.y= 0
    base_cmdForward.linear.z=0
    base_cmdForward.angular.x=0
    base_cmdForward.angular.y=0
    base_cmdForward.angular.z=0
    rover_cmd_vel_pub.publish(base_cmdForward)
    rospy.spin()
