import os

import numpy as np
import cv2

# ROS libraries
import rospy
from sensor_msgs.msg import Image
from geometry_msgs.msg import Twist
from cv_bridge import CvBridge
import time

def distance(x, y):
    return math.sqrt(pow(odometry.____.____ - x,2) + pow(odometry.___.___ - y,2))

check = True
i = 1

if __name__=="__main__":
    pub = rospy.Publisher("/cmd_vel",Twist,queue_size = 2)
    message = Twist()
	odometry = rospy.Subscriber(rr_openrover_driver/odom_encoder, Odometry, queue_size = 2)
    if check is True:
        x = odometry.___.___
        y = odometry.___.___
        check = False
    if (distance(x,y) < (i + 0.2)) or (distance(x,y) > (i - 0.2)):
        t_end = time.time() + 5
        while time.time() < t_end:
            message.linear.x = 0
            pub.publish(message)
            i+=1
    message.linear.x = 0.5
    pub.publish(message)
	rospy.spin()