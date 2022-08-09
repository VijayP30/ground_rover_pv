;; Auto-generated. Do not edit!


(when (boundp 'rr_openrover_driver_msgs::RawRrOpenroverDriverMedRateData)
  (if (not (find-package "RR_OPENROVER_DRIVER_MSGS"))
    (make-package "RR_OPENROVER_DRIVER_MSGS"))
  (shadow 'RawRrOpenroverDriverMedRateData (find-package "RR_OPENROVER_DRIVER_MSGS")))
(unless (find-package "RR_OPENROVER_DRIVER_MSGS::RAWRROPENROVERDRIVERMEDRATEDATA")
  (make-package "RR_OPENROVER_DRIVER_MSGS::RAWRROPENROVERDRIVERMEDRATEDATA"))

(in-package "ROS")
;;//! \htmlinclude RawRrOpenroverDriverMedRateData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rr_openrover_driver_msgs::RawRrOpenroverDriverMedRateData
  :super ros::object
  :slots (_header _reg_pwr_total_current _reg_motor_fb_rpm_left _reg_motor_fb_rpm_right _reg_flipper_fb_position_pot1 _reg_flipper_fb_position_pot2 _reg_motor_fb_current_left _reg_motor_fb_current_right _reg_motor_charger_state _reg_power_a_current _reg_power_b_current _reg_motor_flipper_angle _battery_current_a _battery_current_b ))

(defmethod rr_openrover_driver_msgs::RawRrOpenroverDriverMedRateData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:reg_pwr_total_current __reg_pwr_total_current) 0)
    ((:reg_motor_fb_rpm_left __reg_motor_fb_rpm_left) 0)
    ((:reg_motor_fb_rpm_right __reg_motor_fb_rpm_right) 0)
    ((:reg_flipper_fb_position_pot1 __reg_flipper_fb_position_pot1) 0)
    ((:reg_flipper_fb_position_pot2 __reg_flipper_fb_position_pot2) 0)
    ((:reg_motor_fb_current_left __reg_motor_fb_current_left) 0)
    ((:reg_motor_fb_current_right __reg_motor_fb_current_right) 0)
    ((:reg_motor_charger_state __reg_motor_charger_state) 0)
    ((:reg_power_a_current __reg_power_a_current) 0)
    ((:reg_power_b_current __reg_power_b_current) 0)
    ((:reg_motor_flipper_angle __reg_motor_flipper_angle) 0)
    ((:battery_current_a __battery_current_a) 0)
    ((:battery_current_b __battery_current_b) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _reg_pwr_total_current (round __reg_pwr_total_current))
   (setq _reg_motor_fb_rpm_left (round __reg_motor_fb_rpm_left))
   (setq _reg_motor_fb_rpm_right (round __reg_motor_fb_rpm_right))
   (setq _reg_flipper_fb_position_pot1 (round __reg_flipper_fb_position_pot1))
   (setq _reg_flipper_fb_position_pot2 (round __reg_flipper_fb_position_pot2))
   (setq _reg_motor_fb_current_left (round __reg_motor_fb_current_left))
   (setq _reg_motor_fb_current_right (round __reg_motor_fb_current_right))
   (setq _reg_motor_charger_state (round __reg_motor_charger_state))
   (setq _reg_power_a_current (round __reg_power_a_current))
   (setq _reg_power_b_current (round __reg_power_b_current))
   (setq _reg_motor_flipper_angle (round __reg_motor_flipper_angle))
   (setq _battery_current_a (round __battery_current_a))
   (setq _battery_current_b (round __battery_current_b))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:reg_pwr_total_current
   (&optional __reg_pwr_total_current)
   (if __reg_pwr_total_current (setq _reg_pwr_total_current __reg_pwr_total_current)) _reg_pwr_total_current)
  (:reg_motor_fb_rpm_left
   (&optional __reg_motor_fb_rpm_left)
   (if __reg_motor_fb_rpm_left (setq _reg_motor_fb_rpm_left __reg_motor_fb_rpm_left)) _reg_motor_fb_rpm_left)
  (:reg_motor_fb_rpm_right
   (&optional __reg_motor_fb_rpm_right)
   (if __reg_motor_fb_rpm_right (setq _reg_motor_fb_rpm_right __reg_motor_fb_rpm_right)) _reg_motor_fb_rpm_right)
  (:reg_flipper_fb_position_pot1
   (&optional __reg_flipper_fb_position_pot1)
   (if __reg_flipper_fb_position_pot1 (setq _reg_flipper_fb_position_pot1 __reg_flipper_fb_position_pot1)) _reg_flipper_fb_position_pot1)
  (:reg_flipper_fb_position_pot2
   (&optional __reg_flipper_fb_position_pot2)
   (if __reg_flipper_fb_position_pot2 (setq _reg_flipper_fb_position_pot2 __reg_flipper_fb_position_pot2)) _reg_flipper_fb_position_pot2)
  (:reg_motor_fb_current_left
   (&optional __reg_motor_fb_current_left)
   (if __reg_motor_fb_current_left (setq _reg_motor_fb_current_left __reg_motor_fb_current_left)) _reg_motor_fb_current_left)
  (:reg_motor_fb_current_right
   (&optional __reg_motor_fb_current_right)
   (if __reg_motor_fb_current_right (setq _reg_motor_fb_current_right __reg_motor_fb_current_right)) _reg_motor_fb_current_right)
  (:reg_motor_charger_state
   (&optional __reg_motor_charger_state)
   (if __reg_motor_charger_state (setq _reg_motor_charger_state __reg_motor_charger_state)) _reg_motor_charger_state)
  (:reg_power_a_current
   (&optional __reg_power_a_current)
   (if __reg_power_a_current (setq _reg_power_a_current __reg_power_a_current)) _reg_power_a_current)
  (:reg_power_b_current
   (&optional __reg_power_b_current)
   (if __reg_power_b_current (setq _reg_power_b_current __reg_power_b_current)) _reg_power_b_current)
  (:reg_motor_flipper_angle
   (&optional __reg_motor_flipper_angle)
   (if __reg_motor_flipper_angle (setq _reg_motor_flipper_angle __reg_motor_flipper_angle)) _reg_motor_flipper_angle)
  (:battery_current_a
   (&optional __battery_current_a)
   (if __battery_current_a (setq _battery_current_a __battery_current_a)) _battery_current_a)
  (:battery_current_b
   (&optional __battery_current_b)
   (if __battery_current_b (setq _battery_current_b __battery_current_b)) _battery_current_b)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _reg_pwr_total_current
    4
    ;; int32 _reg_motor_fb_rpm_left
    4
    ;; int32 _reg_motor_fb_rpm_right
    4
    ;; int32 _reg_flipper_fb_position_pot1
    4
    ;; int32 _reg_flipper_fb_position_pot2
    4
    ;; int32 _reg_motor_fb_current_left
    4
    ;; int32 _reg_motor_fb_current_right
    4
    ;; int32 _reg_motor_charger_state
    4
    ;; int32 _reg_power_a_current
    4
    ;; int32 _reg_power_b_current
    4
    ;; int32 _reg_motor_flipper_angle
    4
    ;; int16 _battery_current_a
    2
    ;; int16 _battery_current_b
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _reg_pwr_total_current
       (write-long _reg_pwr_total_current s)
     ;; int32 _reg_motor_fb_rpm_left
       (write-long _reg_motor_fb_rpm_left s)
     ;; int32 _reg_motor_fb_rpm_right
       (write-long _reg_motor_fb_rpm_right s)
     ;; int32 _reg_flipper_fb_position_pot1
       (write-long _reg_flipper_fb_position_pot1 s)
     ;; int32 _reg_flipper_fb_position_pot2
       (write-long _reg_flipper_fb_position_pot2 s)
     ;; int32 _reg_motor_fb_current_left
       (write-long _reg_motor_fb_current_left s)
     ;; int32 _reg_motor_fb_current_right
       (write-long _reg_motor_fb_current_right s)
     ;; int32 _reg_motor_charger_state
       (write-long _reg_motor_charger_state s)
     ;; int32 _reg_power_a_current
       (write-long _reg_power_a_current s)
     ;; int32 _reg_power_b_current
       (write-long _reg_power_b_current s)
     ;; int32 _reg_motor_flipper_angle
       (write-long _reg_motor_flipper_angle s)
     ;; int16 _battery_current_a
       (write-word _battery_current_a s)
     ;; int16 _battery_current_b
       (write-word _battery_current_b s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _reg_pwr_total_current
     (setq _reg_pwr_total_current (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reg_motor_fb_rpm_left
     (setq _reg_motor_fb_rpm_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reg_motor_fb_rpm_right
     (setq _reg_motor_fb_rpm_right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reg_flipper_fb_position_pot1
     (setq _reg_flipper_fb_position_pot1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reg_flipper_fb_position_pot2
     (setq _reg_flipper_fb_position_pot2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reg_motor_fb_current_left
     (setq _reg_motor_fb_current_left (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reg_motor_fb_current_right
     (setq _reg_motor_fb_current_right (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reg_motor_charger_state
     (setq _reg_motor_charger_state (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reg_power_a_current
     (setq _reg_power_a_current (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reg_power_b_current
     (setq _reg_power_b_current (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _reg_motor_flipper_angle
     (setq _reg_motor_flipper_angle (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int16 _battery_current_a
     (setq _battery_current_a (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _battery_current_b
     (setq _battery_current_b (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get rr_openrover_driver_msgs::RawRrOpenroverDriverMedRateData :md5sum-) "8d1326600b05770e80fedaabbf1fed8a")
(setf (get rr_openrover_driver_msgs::RawRrOpenroverDriverMedRateData :datatype-) "rr_openrover_driver_msgs/RawRrOpenroverDriverMedRateData")
(setf (get rr_openrover_driver_msgs::RawRrOpenroverDriverMedRateData :definition-)
      "Header header
int32 reg_pwr_total_current
int32 reg_motor_fb_rpm_left
int32 reg_motor_fb_rpm_right
int32 reg_flipper_fb_position_pot1
int32 reg_flipper_fb_position_pot2
int32 reg_motor_fb_current_left
int32 reg_motor_fb_current_right
int32 reg_motor_charger_state
int32 reg_power_a_current
int32 reg_power_b_current
int32 reg_motor_flipper_angle
int16 battery_current_a
int16 battery_current_b
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



(provide :rr_openrover_driver_msgs/RawRrOpenroverDriverMedRateData "8d1326600b05770e80fedaabbf1fed8a")


