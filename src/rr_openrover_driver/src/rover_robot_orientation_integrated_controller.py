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
        self.loc_subscriber = rospy.Subscriber('/gps/pos_llh',gps_loc, self.update_location)
        self.odometry_callback = rospy.Subscriber('/rr_openrover_driver/odom_encoder', Odometry, self.odometry_callback)
        self.current_location = gps_loc()
        self.max_speed = 0.5
        self.max_turning_speed = 2.5
        self.rate = rospy.Rate(20)
        self.deg_tolerance = 0.5

    def update_location(self, data):
        self.current_location.loc.x = data.loc.x
        self.current_location.loc.y = data.loc.y
        self.current_location.loc.z = data.loc.z
        self.current_location.tow = data.tow
        # print('current_location'+str(self.current_location))
        # print('goal_location'+str(self.goal_lat_long))

    def quaternion_to_euler(self, x, y, z, w):
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

    def odometry_callback(self, data):
        self.current_odometry_x = data.pose.pose.position.x
        self.current_odometry_y = data.pose.pose.position.y
        self.current_odometry_yaw = self.quaternion_to_euler(data.pose.pose.orientation.x,
                                                             data.pose.pose.orientation.y,
                                                             data.pose.pose.orientation.z,
                                                             data.pose.pose.orientation.w)

    def euclidean_distance(self):
        # print("Distance to goal "+str(distance.distance((self.current_location.loc.x, self.current_location.loc.y)\
                # , (self.goal_lat_long.loc.x,self.goal_lat_long.loc.y)).m))
        return distance.distance((self.current_location.loc.x, self.current_location.loc.y)\
                , (self.goal_lat_long.loc.x,self.goal_lat_long.loc.y)).m

    # def linear_vel(self, constant=0.5):
    #     return min(self.max_speed, constant * self.euclidean_distance())
    #
    # def angular_vel(self, constant=6):
    #     return min(self.max_turning_speed, constant * (self.goal_heading - self.current_heading))

    def calculate_angle_between_gps(self, end_point, start_point):
        lat_b = end_point.loc.x
        lat_a = start_point.loc.x

        long_b = end_point.loc.y
        long_a = start_point.loc.y
        #
        # X = math.cos(lat_b) * math.sin(long_b - long_a)
        # Y = (math.cos(lat_a) * math.sin(lat_b)) + (math.sin(lat_a) * math.cos(lat_b) * math.cos(long_b - long_a))

        # return math.atan2(X,Y)
        return atan2((lat_a - lat_b)*(10**(8)),(long_a - long_b)*(10**(8)))

    def calculate_initial_heading(self):
        self.past_location = copy.deepcopy(self.current_location)
        now = time.time()
        while time.time() - now < 3:
            msg = Twist()
            msg.linear.x = 0.5
            msg.linear.y = 0.0
            msg.linear.z = 0.0

            msg.angular.x = 0.0
            msg.angular.y = 0.0
            msg.angular.z = 0.0
            self.velocity_publisher.publish(msg)
        # end_location = self.current_location
        # self.start_heading = self.calculate_angle_between_gps(end_location, start_location)
        # self.current_heading = copy.deepcopy(self.start_heading)

    def move2goal(self):
        """Moves the rover to the goal."""
        # lat = float(input("Set your latitude value goal: "))
        # long = float(input("Set your longitude value goal: "))
        # self.goal_lat_long = (lat, long)
        #print(self.euclidean_distance())
        print("Reading Goal Lat Long Values from goal.json")
        f = open('/home/ubuntu/Catkin_ws/src/rr_openrover_driver/src/goal.json')
        data = json.load(f)
        goal_lat_long_json = (data["latitude"],data["longitude"])
        self.goal_lat_long = gps_loc()
        self.goal_lat_long.loc.x = data["latitude"]
        self.goal_lat_long.loc.y = data["longitude"]
        self.goal_lat_long.loc.z = 0
        self.goal_lat_long.tow = 0
        f.close()
        distance_tolerance = 0.5
        vel_msg = Twist()
        self.calculate_initial_heading()
        # starting_point = self.current_location
        # while self.euclidean_distance() >= distance_tolerance:
        #     self.goal_heading = self.calculate_angle_between_gps(self.goal_lat_lon, self.current_location)
        #     self.align_towards_goal()
        #     vel_msg.linear.x = self.linear_vel()
        #     vel_msg.linear.y = 0
        #     vel_msg.linear.z = 0
        #     vel_msg.angular.x = 0
        #     vel_msg.angular.y = 0
        #     vel_msg.angular.z = 0
        #     self.velocity_publisher.publish(vel_msg)
        #     self.rate.sleep()
        # vel_msg.linear.x = 0
        # vel_msg.angular.z = 0
        # # self.velocity_publisher.publish(vel_msg)
        # goal_heading = self.calculate_angle_between_gps(self.goal_lat_long,self.current_location)
        # print("Goal Heading",goal_heading)
        # current_heading = self.calculate_angle_between_gps(self.current_location,self.past_location)
        # print("Current Heading",current_heading)
        # yaw_error = goal_heading - current_heading
        # print("Yaw Error",yaw_error)
        
        # Calculates original distance from goal for stop and go
        original_distance = distance.distance((self.current_location.loc.x, self.current_location.loc.y)\
                , (self.goal_lat_long.loc.x,self.goal_lat_long.loc.y)).m
        stop_cnt = 1.0

        while self.euclidean_distance() >= distance_tolerance:

            # Calculates current distance
            # current_dist1 = distance.distance((self.current_location.loc.x, self.current_location.loc.y)\
            #     , (self.goal_lat_long.loc.x,self.goal_lat_long.loc.y)).m
            # print(current_dist1)
            # print(original_distance - stop_cnt + 0.3)
            # print(original_distance - stop_cnt - 0.3)
            # If current distance is one meter away from last stop/original distance, stop (+-0.3m error)
            # if current_dist1 <= (original_distance - stop_cnt + 0.3) and current_dist1 >= (original_distance - stop_cnt - 0.3):
                # print("Hi")
            #     stop_cnt += 1.0
            #     t_end = time.time() + 5
            #     while time.time() < t_end:
            #         vel_msg = Twist()
            #         vel_msg.linear.x = 0
            #         vel_msg.linear.y = 0
            #         vel_msg.linear.z = 0
            #         vel_msg.angular.x = 0
            #         vel_msg.angular.y = 0
            #         vel_msg.angular.z = 0
            #         self.velocity_publisher.publish(vel_msg)        

            goal_heading = self.calculate_angle_between_gps(self.goal_lat_long,self.current_location)
            print("Goal Heading",goal_heading)
            current_heading = self.calculate_angle_between_gps(self.current_location,self.past_location)
            print("Current Heading",current_heading)
            yaw_error = goal_heading - current_heading
            print("Yaw Error",yaw_error)
            if (abs(yaw_error) > np.radians(self.deg_tolerance)):
                print("Turning")
                current_encoder = copy.deepcopy(self.current_odometry_yaw)
                final_encoder = copy.deepcopy(self.current_odometry_yaw)
                while(abs(final_encoder - current_encoder) < abs(yaw_error)):
                    vel_msg = Twist()
                    vel_msg.linear.x = 0
                    vel_msg.linear.y = 0
                    vel_msg.linear.z = 0
                    vel_msg.angular.x = 0
                    vel_msg.angular.y = 0
                    print(3.0 * (yaw_error/abs(yaw_error)))
                    vel_msg.angular.z = 3.0 * (yaw_error/abs(yaw_error))
                    self.velocity_publisher.publish(vel_msg)
                    final_encoder = copy.deepcopy(self.current_odometry_yaw)
                vel_msg = Twist()
                vel_msg.linear.x = 0
                vel_msg.linear.y = 0
                vel_msg.linear.z = 0
                vel_msg.angular.x = 0
                vel_msg.angular.y = 0
                vel_msg.angular.z = 0
                self.velocity_publisher.publish(vel_msg)
            self.past_location = copy.deepcopy(self.current_location)
            last = time.time()
            while time.time() - last < 2:
                vel_msg = Twist()
                vel_msg.linear.x = 0.5
                vel_msg.linear.y = 0
                vel_msg.linear.z = 0
                vel_msg.angular.x = 0
                vel_msg.angular.y = 0
                vel_msg.angular.z = 0
                # Calculates current distance
                current_dist2 = distance.distance((self.current_location.loc.x, self.current_location.loc.y)\
                , (self.goal_lat_long.loc.x,self.goal_lat_long.loc.y)).m
                # print(current_dist1)
                # print(original_distance - stop_cnt + 0.2)
                # print(original_distance - stop_cnt - 0.2)
                # If current distance is one meter away from last stop/original distance, stop (+-0.3m error)
                if current_dist2 <= (original_distance - stop_cnt + 0.1) and current_dist2 >= (original_distance - stop_cnt - 0.1):
                    print("Hi")
                    stop_cnt += 1.0
                    t_end = time.time() + 5
                    while time.time() < t_end:
                        vel_msg = Twist()
                        vel_msg.linear.x = 0
                        vel_msg.linear.y = 0
                        vel_msg.linear.z = 0
                        vel_msg.angular.x = 0
                        vel_msg.angular.y = 0
                        vel_msg.angular.z = 0
                        self.velocity_publisher.publish(vel_msg)
                    vel_msg.linear.x = 0.5
                    
                self.velocity_publisher.publish(vel_msg)
            vel_msg = Twist()
            vel_msg.linear.x = 0
            vel_msg.linear.y = 0
            vel_msg.linear.z = 0
            vel_msg.angular.x = 0
            vel_msg.angular.y = 0
            vel_msg.angular.z = 0
            self.velocity_publisher.publish(vel_msg)
            print("Stopping")
        vel_msg = Twist()
        vel_msg.linear.x = 0
        vel_msg.linear.y = 0
        vel_msg.linear.z = 0
        vel_msg.angular.x = 0
        vel_msg.angular.y = 0
        vel_msg.angular.z = 0
        self.velocity_publisher.publish(vel_msg)
        rospy.spin()

if __name__ == '__main__':
    try:
        x = Rover_Robot_Controller()
        x.move2goal()
    except rospy.ROSInterruptException:
        pass
