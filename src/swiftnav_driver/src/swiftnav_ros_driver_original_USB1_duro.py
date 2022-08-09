#!/usr/bin/env python

from sbp.client.drivers.pyserial_driver import PySerialDriver
from sbp.client import Handler, Framer
from sbp.navigation import SBP_MSG_BASELINE_NED, MsgBaselineNED, SBP_MSG_POS_LLH, MsgPosLLH
from sbp.imu import SBP_MSG_IMU_RAW, MsgImuRaw, SBP_MSG_IMU_AUX, MsgImuAux
from sbp.mag import SBP_MSG_MAG_RAW, MsgMagRaw
import argparse
import pdb;

import rospy
from geometry_msgs.msg import Point, Accel, Vector3
import threading
from std_msgs.msg import Float64MultiArray, Float64, UInt8
from swiftnav_driver.msg import s16_Vec3, imu, imu_aux, imu_scaled, gps_loc
import numpy as np

rospy.init_node('duro1')
pub_llh = rospy.Publisher(rospy.get_name() + '/pos_llh', gps_loc, queue_size=10)
pub_enu_point = rospy.Publisher(rospy.get_name() + '/enu_pose_best_fix', Point, queue_size=10)
pub_enu = rospy.Publisher(rospy.get_name() + '/enu_pose', gps_loc, queue_size=10)
pub_ned = rospy.Publisher(rospy.get_name() + '/ned_pose_best_fix', gps_loc, queue_size=10)
pub_imu_raw = rospy.Publisher(rospy.get_name() + '/imu_raw', imu, queue_size=10)
pub_imu_scaled = rospy.Publisher(rospy.get_name() + '/imu_scaled', imu_scaled, queue_size=10)
pub_imu_aux = rospy.Publisher(rospy.get_name() + '/imu_aux', imu_aux, queue_size=10)
pub_mag_raw = rospy.Publisher(rospy.get_name() + '/mag_raw', s16_Vec3, queue_size=10)

g_value = 9.81
imu_scale_flag = 0
imu_res = np.iinfo(np.int16).max
acc_scale = 0.00
gyr_scale = 0.00

def cb_SBP_MSG_POS_LLH(msg_llh, **source):
    # rate = rospy.Rate(10)
    msg = MsgPosLLH(msg_llh)
    # rospy.loginfo(msg)

    llhCoods  = gps_loc()
    llhCoods.loc.x = msg.lat
    llhCoods.loc.y = msg.lon
    llhCoods.loc.z = msg.height
    llhCoods.tow = msg.tow

    pub_llh.publish(llhCoods)

    # rospy.loginfo('lat lon message recieved')
    # # rospy.loginfo(llhCoods)
    # rate.sleep()

def cb_SBP_MSG_BASELINE_NED(msg_ned, **source):
    # rate = rospy.Rate(10)
    msg = MsgBaselineNED(msg_ned)
    # rospy.loginfo(msg)

    rtk_fix_enu_point = Point()
    rtk_fix_enu_point.x = msg.e * 1e-3
    rtk_fix_enu_point.y = msg.n * 1e-3
    rtk_fix_enu_point.z = -msg.d * 1e-3
    pub_enu_point.publish(rtk_fix_enu_point)

    rtk_fix_enu = gps_loc()
    rtk_fix_enu.loc.x = msg.e * 1e-3
    rtk_fix_enu.loc.y = msg.n * 1e-3
    rtk_fix_enu.loc.z = -msg.d * 1e-3
    rtk_fix_enu.tow = msg.tow
    pub_enu.publish(rtk_fix_enu)

    rtk_fix_ned = gps_loc()
    rtk_fix_ned.loc.x = msg.n * 1e-3
    rtk_fix_ned.loc.y = msg.e * 1e-3
    rtk_fix_ned.loc.z = msg.d * 1e-3
    rtk_fix_ned.tow = msg.tow
    pub_ned.publish(rtk_fix_ned)

    # rospy.loginfo('enu message recieved')
    # # rospy.loginfo(rtk_fix)
    # rate.sleep()

def cb_SBP_MSG_IMU_RAW(msg_imu_raw, **source):
    global imu_scale_flag
    global acc_scale
    global gyr_scale

    # rate = rospy.Rate(100)
    msg = MsgImuRaw(msg_imu_raw)
    # rospy.loginfo(msg)

    imu_raw_msg = imu()
    imu_raw_msg.acc.x = msg.acc_x
    imu_raw_msg.acc.y = msg.acc_y
    imu_raw_msg.acc.z = msg.acc_z
    imu_raw_msg.gyr.x = msg.gyr_x
    imu_raw_msg.gyr.y = msg.gyr_y
    imu_raw_msg.gyr.z = msg.gyr_z
    imu_raw_msg.tow = msg.tow
    pub_imu_raw.publish(imu_raw_msg)

    if imu_scale_flag == 0:
        imu_scale_flag = rospy.get_param(rospy.get_name()+'/imu_scale_flag')
        if imu_scale_flag == 1:
            rospy.loginfo('IMU scale found')
            acc_scale = rospy.get_param(rospy.get_name()+'/acc_scale')
            rospy.loginfo('acc scale = ' + str(acc_scale))
            rospy.loginfo('acc range = ' + str(rospy.get_param(rospy.get_name()+'/acc_range')))
            gyr_scale = rospy.get_param(rospy.get_name()+'/gyr_scale')
            rospy.loginfo('gyr scale = ' + str(gyr_scale))
            rospy.loginfo('gyr range = ' + str(rospy.get_param(rospy.get_name()+'/gyr_range')))

    imu_scaled_msg = imu_scaled()
    if imu_scale_flag == 1:
        imu_scaled_msg.acc.x = imu_raw_msg.acc.x*acc_scale
        imu_scaled_msg.acc.y = imu_raw_msg.acc.y*acc_scale
        imu_scaled_msg.acc.z = imu_raw_msg.acc.z*acc_scale
        imu_scaled_msg.gyr.x = imu_raw_msg.gyr.x*gyr_scale
        imu_scaled_msg.gyr.y = imu_raw_msg.gyr.y*gyr_scale
        imu_scaled_msg.gyr.z = imu_raw_msg.gyr.z*gyr_scale
        imu_scaled_msg.tow = imu_raw_msg.tow
    else:
        rospy.loginfo('IMU scale not available')

    pub_imu_scaled.publish(imu_scaled_msg)

    # rospy.loginfo('imu message recieved')
    # # rospy.loginfo(imu_raw_msg)
    # rate.sleep()

def cb_SBP_MSG_IMU_AUX(msg_imu_aux, **source):
    # rate = rospy.Rate(100)
    msg = MsgImuAux(msg_imu_aux)
    # rospy.loginfo(msg)

    imu_aux_msg = imu_aux()
    imu_aux_msg.imu_conf = msg.imu_conf
    imu_aux_msg.temp = msg.temp
    imu_aux_msg.imu_type = msg.imu_type

    acc_conf = msg.imu_conf & 7
    acc_range = g_value*(2**(acc_conf+1))
    acc_scale = acc_range/imu_res

    gyr_conf = msg.imu_conf >> 4
    gyr_range = 2000.00/(2**(gyr_conf))
    gyr_scale = gyr_range/imu_res

    rospy.set_param(rospy.get_name()+'/imu_scale_flag',1)
    rospy.set_param(rospy.get_name()+'/acc_conf',acc_conf)
    rospy.set_param(rospy.get_name()+'/acc_range',acc_range)
    rospy.set_param(rospy.get_name()+'/acc_scale',acc_scale)
    rospy.set_param(rospy.get_name()+'/gyr_conf',gyr_conf)
    rospy.set_param(rospy.get_name()+'/gyr_range',gyr_range)
    rospy.set_param(rospy.get_name()+'/gyr_scale',gyr_scale)

    pub_imu_aux.publish(imu_aux_msg)

    # rospy.loginfo('imu_aux message recieved')
    # rospy.loginfo(imu_scale_flag)
    # rospy.loginfo(acc_conf)
    # rospy.loginfo(acc_range)
    # rospy.loginfo(acc_scale)
    # rospy.loginfo(gyr_conf)
    # rospy.loginfo(gyr_range)
    # rospy.loginfo(gyr_scale)
    # rate.sleep()

def main():
    # parser = argparse.ArgumentParser()
    # parser.add_argument(
    #     "-p",
    #     "--port",
    #     default=['/dev/ttyUSB0'],
    #     nargs=1,
    #     help="specify the serial port to use.")
    # args = parser.parse_args()

    # rospy.init_node('piksi')

    # threads = []


    driver = PySerialDriver('/dev/ttyUSB1', baud=115200)
    framer = Framer(driver.read, None, verbose=True)
    source = Handler(framer)

    rospy.set_param(rospy.get_name()+'/imu_scale_flag',0)


    source.add_callback(cb_SBP_MSG_POS_LLH,msg_type=SBP_MSG_POS_LLH)
    source.add_callback(cb_SBP_MSG_BASELINE_NED,msg_type=SBP_MSG_BASELINE_NED)
    source.add_callback(cb_SBP_MSG_IMU_RAW,msg_type=SBP_MSG_IMU_RAW)
    source.add_callback(cb_SBP_MSG_IMU_AUX,msg_type=SBP_MSG_IMU_AUX)
    source.start()

    rospy.spin()

if __name__ == "__main__":
    main()
