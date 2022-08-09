;; Auto-generated. Do not edit!


(when (boundp 'rr_openrover_driver_msgs::RawRrOpenroverDriverSlowRateData)
  (if (not (find-package "RR_OPENROVER_DRIVER_MSGS"))
    (make-package "RR_OPENROVER_DRIVER_MSGS"))
  (shadow 'RawRrOpenroverDriverSlowRateData (find-package "RR_OPENROVER_DRIVER_MSGS")))
(unless (find-package "RR_OPENROVER_DRIVER_MSGS::RAWRROPENROVERDRIVERSLOWRATEDATA")
  (make-package "RR_OPENROVER_DRIVER_MSGS::RAWRROPENROVERDRIVERSLOWRATEDATA"))

(in-package "ROS")
;;//! \htmlinclude RawRrOpenroverDriverSlowRateData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rr_openrover_driver_msgs::RawRrOpenroverDriverSlowRateData
  :super ros::object
  :slots (_header _reg_motor_fault_flag_left _reg_motor_temp_left _reg_motor_temp_right _reg_power_bat_voltage_a _reg_power_bat_voltage_b _reg_robot_rel_soc_a _reg_robot_rel_soc_b _battery_mode_a _battery_mode_b _battery_temp_a _battery_temp_b _battery_voltage_a _battery_voltage_b _buildno ))

(defmethod rr_openrover_driver_msgs::RawRrOpenroverDriverSlowRateData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:reg_motor_fault_flag_left __reg_motor_fault_flag_left) 0)
    ((:reg_motor_temp_left __reg_motor_temp_left) 0)
    ((:reg_motor_temp_right __reg_motor_temp_right) 0)
    ((:reg_power_bat_voltage_a __reg_power_bat_voltage_a) 0)
    ((:reg_power_bat_voltage_b __reg_power_bat_voltage_b) 0)
    ((:reg_robot_rel_soc_a __reg_robot_rel_soc_a) 0)
    ((:reg_robot_rel_soc_b __reg_robot_rel_soc_b) 0)
    ((:battery_mode_a __battery_mode_a) 0)
    ((:battery_mode_b __battery_mode_b) 0)
    ((:battery_temp_a __battery_temp_a) 0)
    ((:battery_temp_b __battery_temp_b) 0)
    ((:battery_voltage_a __battery_voltage_a) 0)
    ((:battery_voltage_b __battery_voltage_b) 0)
    ((:buildno __buildno) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _reg_motor_fault_flag_left (round __reg_motor_fault_flag_left))
   (setq _reg_motor_temp_left (round __reg_motor_temp_left))
   (setq _reg_motor_temp_right (round __reg_motor_temp_right))
   (setq _reg_power_bat_voltage_a (round __reg_power_bat_voltage_a))
   (setq _reg_power_bat_voltage_b (round __reg_power_bat_voltage_b))
   (setq _reg_robot_rel_soc_a (round __reg_robot_rel_soc_a))
   (setq _reg_robot_rel_soc_b (round __reg_robot_rel_soc_b))
   (setq _battery_mode_a (round __battery_mode_a))
   (setq _battery_mode_b (round __battery_mode_b))
   (setq _battery_temp_a (round __battery_temp_a))
   (setq _battery_temp_b (round __battery_temp_b))
   (setq _battery_voltage_a (round __battery_voltage_a))
   (setq _battery_voltage_b (round __battery_voltage_b))
   (setq _buildno (round __buildno))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:reg_motor_fault_flag_left
   (&optional __reg_motor_fault_flag_left)
   (if __reg_motor_fault_flag_left (setq _reg_motor_fault_flag_left __reg_motor_fault_flag_left)) _reg_motor_fault_flag_left)
  (:reg_motor_temp_left
   (&optional __reg_motor_temp_left)
   (if __reg_motor_temp_left (setq _reg_motor_temp_left __reg_motor_temp_left)) _reg_motor_temp_left)
  (:reg_motor_temp_right
   (&optional __reg_motor_temp_right)
   (if __reg_motor_temp_right (setq _reg_motor_temp_right __reg_motor_temp_right)) _reg_motor_temp_right)
  (:reg_power_bat_voltage_a
   (&optional __reg_power_bat_voltage_a)
   (if __reg_power_bat_voltage_a (setq _reg_power_bat_voltage_a __reg_power_bat_voltage_a)) _reg_power_bat_voltage_a)
  (:reg_power_bat_voltage_b
   (&optional __reg_power_bat_voltage_b)
   (if __reg_power_bat_voltage_b (setq _reg_power_bat_voltage_b __reg_power_bat_voltage_b)) _reg_power_bat_voltage_b)
  (:reg_robot_rel_soc_a
   (&optional __reg_robot_rel_soc_a)
   (if __reg_robot_rel_soc_a (setq _reg_robot_rel_soc_a __reg_robot_rel_soc_a)) _reg_robot_rel_soc_a)
  (:reg_robot_rel_soc_b
   (&optional __reg_robot_rel_soc_b)
   (if __reg_robot_rel_soc_b (setq _reg_robot_rel_soc_b __reg_robot_rel_soc_b)) _reg_robot_rel_soc_b)
  (:battery_mode_a
   (&optional __battery_mode_a)
   (if __battery_mode_a (setq _battery_mode_a __battery_mode_a)) _battery_mode_a)
  (:battery_mode_b
   (&optional __battery_mode_b)
   (if __battery_mode_b (setq _battery_mode_b __battery_mode_b)) _battery_mode_b)
  (:battery_temp_a
   (&optional __battery_temp_a)
   (if __battery_temp_a (setq _battery_temp_a __battery_temp_a)) _battery_temp_a)
  (:battery_temp_b
   (&optional __battery_temp_b)
   (if __battery_temp_b (setq _battery_temp_b __battery_temp_b)) _battery_temp_b)
  (:battery_voltage_a
   (&optional __battery_voltage_a)
   (if __battery_voltage_a (setq _battery_voltage_a __battery_voltage_a)) _battery_voltage_a)
  (:battery_voltage_b
   (&optional __battery_voltage_b)
   (if __battery_voltage_b (setq _battery_voltage_b __battery_voltage_b)) _battery_voltage_b)
  (:buildno
   (&optional __buildno)
   (if __buildno (setq _buildno __buildno)) _buildno)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _reg_motor_fault_flag_left
    4
    ;; int32 _reg_motor_temp_left
    4
    ;; int32 _reg_motor_temp_right
    4
    ;; int32 _reg_power_bat_voltage_a
    4
    ;; int32 _reg_power_bat_voltage_b
    4
    ;; int32 _reg_robot_rel_soc_a
    4
    ;; int32 _reg_robot_rel_soc_b
    4
    ;; uint16 _battery_mode_a
    2
    ;; uint16 _battery_mode_b
    2
    ;; uint16 _battery_temp_a
    2
    ;; uint16 _battery_temp_b
    2
    ;; uint16 _battery_voltage_a
    2
    ;; uint16 _battery_voltage_b
    2
    ;; int32 _buildno
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _reg_motor_fault_flag_left
       (write-long _reg_motor_fault_flag_left s)
     ;; int32 _reg_motor_temp_left
       (write-long _reg_motor_temp_left s)
     ;; int32 _reg_motor_temp_right
       (write-long _reg_motor_temp_right s)
     ;; int32 _reg_power_bat_voltage_a
       (write-long _reg_power_bat_voltage_a s)
     ;; int32 _reg_power_bat_voltage_b
       (write-long _reg_power_bat_voltage_b s)
     ;; int32 _reg_robot_rel_soc_a
       (write-long _reg_robot_rel_soc_a s)
     ;; int32 _reg_robot_rel_soc_b
       (write-long _reg_robot_rel_soc_b s)
     ;; uint16 _battery_mode_a
       (write-word _battery_mode_a s)
     ;; uint16 _battery_mode_b
       (write-word _battery_mode_b s)
     ;; uint16 _battery_temp_a
       (write-word _battery_temp_a s)
     ;; uint16 _battery_temp_b
       (write-word _battery_temp_b s)
     ;; uint16 _battery_voltage_a
       (write-word _battery_voltage_a s)
     ;; uint16 _battery_voltage_b
       (write-word _battery_voltage_b s)
     ;; int32 _buildno
       (write-long _buildno s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _reg_motor_fault_flag_left
     (setq _reg_motor_fault_flag_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reg_motor_temp_left
     (setq _reg_motor_temp_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reg_motor_temp_right
     (setq _reg_motor_temp_right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reg_power_bat_voltage_a
     (setq _reg_power_bat_voltage_a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reg_power_bat_voltage_b
     (setq _reg_power_bat_voltage_b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reg_robot_rel_soc_a
     (setq _reg_robot_rel_soc_a (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reg_robot_rel_soc_b
     (setq _reg_robot_rel_soc_b (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _battery_mode_a
     (setq _battery_mode_a (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _battery_mode_b
     (setq _battery_mode_b (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _battery_temp_a
     (setq _battery_temp_a (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _battery_temp_b
     (setq _battery_temp_b (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _battery_voltage_a
     (setq _battery_voltage_a (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _battery_voltage_b
     (setq _battery_voltage_b (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int32 _buildno
     (setq _buildno (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rr_openrover_driver_msgs::RawRrOpenroverDriverSlowRateData :md5sum-) "81c26593ff4507cd00407918de2b2593")
(setf (get rr_openrover_driver_msgs::RawRrOpenroverDriverSlowRateData :datatype-) "rr_openrover_driver_msgs/RawRrOpenroverDriverSlowRateData")
(setf (get rr_openrover_driver_msgs::RawRrOpenroverDriverSlowRateData :definition-)
      "Header header
int32 reg_motor_fault_flag_left
int32 reg_motor_temp_left
int32 reg_motor_temp_right
int32 reg_power_bat_voltage_a
int32 reg_power_bat_voltage_b
int32 reg_robot_rel_soc_a
int32 reg_robot_rel_soc_b
uint16 battery_mode_a
uint16 battery_mode_b
uint16 battery_temp_a
uint16 battery_temp_b
uint16 battery_voltage_a
uint16 battery_voltage_b
int32 buildno

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :rr_openrover_driver_msgs/RawRrOpenroverDriverSlowRateData "81c26593ff4507cd00407918de2b2593")


