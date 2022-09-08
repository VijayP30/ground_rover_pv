#!/usr/bin/env python3
import os

import numpy as np
import cv2

# ROS libraries
import rospy
import copy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from geometry_msgs.msg import Point
from std_msgs.msg import Float64
import time
import math

rospy.init_node("StopAndGo", anonymous = True)
pub = rospy.Publisher("/cmd_vel",Twist,queue_size = 1)

current_odometry_x = 0
current_odometry_y = 0

def distance(x1, y1, x2, y2):
    return math.sqrt(pow(x1 - x2, 2) + pow(y1 - y2, 2))

def odometry_callback(data):
    global current_odometry_x, current_odometry_y
    current_odometry_x = data.pose.pose.position.x
    current_odometry_y = data.pose.pose.position.y

odometry = rospy.Subscriber('/rr_openrover_driver/odom_encoder', Odometry, odometry_callback)
start_odometry_x = current_odometry_x
start_odometry_y = current_odometry_y
stop = 1
flag = 1
while not rospy.is_shutdown():
    msg = Twist()
    msg.linear.x = 0.3
    msg.linear.y = 0
    msg.linear.z = 0
    msg.angular.x = 0
    msg.angular.y = 0
    msg.angular.z = 0
    pub.publish(msg)
    if flag == 1:
        t_end = time.time() + 2
        while time.time() < t_end:
            print("waiting")
        start_odometry_x = current_odometry_x
        start_odometry_y = current_odometry_y
        flag = -1
    print(distance(start_odometry_x,start_odometry_y,current_odometry_x,current_odometry_y))
    if (distance(start_odometry_x,start_odometry_y,current_odometry_x,current_odometry_y) < (stop + 0.01)) and (distance(start_odometry_x,start_odometry_y,current_odometry_x,current_odometry_y) > (stop - 0.01)):
        stop += 1
        t_end = time.time() + 5
        while time.time() < t_end:
            msg.linear.x = 0
            msg.linear.y = 0
            msg.linear.z = 0
            msg.angular.x = 0
            msg.angular.y = 0
            msg.angular.z = 0
            pub.publish(msg)
    
