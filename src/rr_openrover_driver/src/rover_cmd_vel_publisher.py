#!/usr/bin/env python
import rospy
import time
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
import copy
import  math
import numpy as np

rospy.init_node("Robot_Robot_Controller",anonymous=True)

pub = rospy.Publisher("/cmd_vel", Twist, queue_size=10)

current_odometry_x = 0
current_odometry_y = 0
current_odometry_yaw = 0

def quaternion_to_euler(x, y, z, w):
    t0 = +2.0 * (w * x + y * z)
    t1 = +1.0 - 2.0 * (x * x + y * y)
    roll_x = math.atan2(t0, t1)

    t2 = +2.0 * (w * y - z * x)
    t2 = +1.0 if t2 > +1.0 else t2
    t2 = -1.0 if t2 < -1.0 else t2
    pitch_y = math.asin(t2)

    t3 = +2.0 * (w * z + x * y)
    t4 = +1.0 - 2.0 * (y * y + z * z)
    yaw_z = math.atan2(t3, t4)

    return yaw_z

def odometry_callback(data):
    global current_odometry_x, current_odometry_y, current_odometry_yaw
    current_odometry_x = data.pose.pose.position.x
    current_odometry_y = data.pose.pose.position.y
    current_odometry_yaw = quaternion_to_euler(data.pose.pose.orientation.x,
                                                         data.pose.pose.orientation.y,
                                                         data.pose.pose.orientation.z,
                                                         data.pose.pose.orientation.w)


odometry = rospy.Subscriber('/rr_openrover_driver/odom_encoder', Odometry, odometry_callback)
now = time.time()
start_odometry_yaw = copy.deepcopy(current_odometry_yaw)

while not rospy.is_shutdown():
    msg = Twist()
    msg.linear.x = 0.0
    msg.linear.y = 0.0
    msg.linear.z = 0.0

    msg.angular.x = 0.0
    msg.angular.y = 0
    msg.angular.z = -3.0
    pub.publish(msg)
    if abs(current_odometry_yaw - start_odometry_yaw) > np.radians(135):
        break
    #rospy.sleep(0.1)
    # if time.time() - now > 5:
    #     break
