#!/usr/bin/env python
import rospy
from std_msgs.msg import Float64
from swiftnav_driver.msg import gps_loc
from geometry_msgs.msg import Point
import copy
from math import atan2
from geometry_msgs.msg import Twist

class Rover_Robot_Controller:
    def __init__(self):
        print("coming inside")
        rospy.init_node('rover_heading', anonymous=True)
        self.loc_subscriber = rospy.Subscriber('/gps/enu_pose_best_fix',Point, self.update_location)
        self.enurefer = Point()
        self.enurefer.x = -100.0
        self.enurefer.y = -100.0
        self.enurefer.z = -100.0

        self.heading_publisher = rospy.Publisher('/roverheading', Float64, queue_size = 10)
        self.rate = rospy.Rate(100)

    def update_location(self, data):
        if self.enurefer.x == -100.0:
            self.enurefer.x = data.x
            self.enurefer.y = data.y
            self.enurefer.z = data.z
        else:
            current_pos = Point()
            current_pos.x = data.x
            current_pos.y = data.y
            current_pos.z = data.z
            if ((current_pos.y - self.enurefer.y)*(current_pos.y - self.enurefer.y)+(current_pos.x - self.enurefer.x)*(current_pos.x - self.enurefer.x))>=0.1:
                heading = atan2(current_pos.y - self.enurefer.y,current_pos.x - self.enurefer.x)
                self.enurefer.x = data.x
                self.enurefer.y = data.y
                self.enurefer.z = data.z
                heading_message = Float64()
                heading_message.data = heading
                self.heading_publisher.publish(heading_message)

    def heading_estimator(self):
        while not rospy.is_shutdown():
            rospy.spin()

# print("hi")
rover_controller = Rover_Robot_Controller()
rover_controller.heading_estimator()
