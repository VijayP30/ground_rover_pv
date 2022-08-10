#!/usr/bin/env python
import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from math import pow, atan2, sqrt
from swiftnav_driver.msg import gps_loc
from geopy import distance
import json
import math
import time
import numpy as np
import copy

class Rover_Robot_Controller:
    def __init__(self):
        rospy.init_node('rover_controller', anonymous=True)
        self.velocity_publisher = rospy.Publisher('/cmd_vel',Twist, queue_size=10)
        self.loc_subscriber = rospy.Subscriber('/gps_driver/pos_llh',gps_loc, self.update_location)
        self.current_location = gps_loc()
        self.max_speed = 0.5
        self.goal_lat_long = (44.97615217860632,-93.23228834999514)

        self.rate = rospy.Rate(20)

    def update_location(self, data):
        self.current_location.loc.x = data.loc.x
        self.current_location.loc.y = data.loc.y
        self.current_location.loc.z = data.loc.z
        self.current_location.tow = data.tow
        print('current_location'+str(self.current_location))
        print('goal_location'+str(self.goal_lat_long))

    def euclidean_distance(self):
        print("Distance to goal"+str(distance.distance((self.current_location.loc.x, self.current_location.loc.y)\
               , self.goal_lat_long).m))
        return distance.distance((self.current_location.loc.x, self.current_location.loc.y)\
                , self.goal_lat_long).m

    def linear_vel(self, constant=0.5):
        return min(self.max_speed, constant * self.euclidean_distance())

    # def steering_angle(self):
    #     """See video: https://www.youtube.com/watch?v=Qh15Nol5htM."""
    #     return atan2(goal_pose.y - self.pose.y, goal_pose.x - self.pose.x)

    # def angular_vel(self, goal_pose, constant=6):
    #     """See video: https://www.youtube.com/watch?v=Qh15Nol5htM."""
    #     return constant * (self.steering_angle() - self.pose.theta)

    def move2goal(self):
        """Moves the rover to the goal."""
        # lat = float(input("Set your latitude value goal: "))
        # long = float(input("Set your longitude value goal: "))
        # self.goal_lat_long = (lat, long)
        distance_tolerance = 1
        vel_msg = Twist()
        original_distance = distance.distance((self.current_location.loc.x, self.current_location.loc.y)\
                , (self.goal_lat_long.loc.x,self.goal_lat_long.loc.y)).m
        stop_cnt = 1.0
        while self.euclidean_distance() >= distance_tolerance:
            # Calculates current distance
            current_dist1 = distance.distance((self.current_location.loc.x, self.current_location.loc.y)\
                , (self.goal_lat_long.loc.x,self.goal_lat_long.loc.y)).m
            print(current_dist1)
            print(original_distance - stop_cnt + 0.3)
            print(original_distance - stop_cnt - 0.3)
            # If current distance is one meter away from last stop/original distance, stop (+-0.3m error)
            if current_dist1 <= (original_distance - stop_cnt + 0.3) and current_dist1 >= (original_distance - stop_cnt - 0.3):
                print("Hi")
                stop_cnt += 1.0
                t_start = time.time()
                while time.time() <= t_start + 1.25:
                    # vel_msg = Twist()
                    vel_msg.linear.x = vel_msg.linear.x - 0.5 * (time.time() - t_start)
                    self.velocity_publisher.publish(vel_msg)
                    if vel_msg.linear.x <= 0:
                        vel_msg.linear.x = 0
                        self.velocity_publisher.publish(vel_msg)
                        break
                t_end = time.time() + 5
                while time.time() <= t_end:
                    vel_msg = Twist()
                    vel_msg.linear.x = 0
                    vel_msg.linear.y = 0
                    vel_msg.linear.z = 0
                    vel_msg.angular.x = 0
                    vel_msg.angular.y = 0
                    vel_msg.angular.z = 0
                    self.velocity_publisher.publish(vel_msg)
            vel_msg.linear.x = self.linear_vel()
            vel_msg.linear.y = 0
            vel_msg.linear.z = 0
            vel_msg.angular.x = 0
            vel_msg.angular.y = 0
            vel_msg.angular.z = 0
            self.velocity_publisher.publish(vel_msg)
            self.rate.sleep()
        vel_msg.linear.x = 0
        vel_msg.angular.z = 0
        self.velocity_publisher.publish(vel_msg)
        rospy.spin()

if __name__ == '__main__':
    try:
        x = Rover_Robot_Controller()
        x.move2goal()
    except rospy.ROSInterruptException:
        pass
