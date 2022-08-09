;; Auto-generated. Do not edit!


(when (boundp 'rr_openrover_driver_msgs::SmartBatteryStatus)
  (if (not (find-package "RR_OPENROVER_DRIVER_MSGS"))
    (make-package "RR_OPENROVER_DRIVER_MSGS"))
  (shadow 'SmartBatteryStatus (find-package "RR_OPENROVER_DRIVER_MSGS")))
(unless (find-package "RR_OPENROVER_DRIVER_MSGS::SMARTBATTERYSTATUS")
  (make-package "RR_OPENROVER_DRIVER_MSGS::SMARTBATTERYSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SmartBatteryStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rr_openrover_driver_msgs::SmartBatteryStatus
  :super ros::object
  :slots (_header _over_charged_alarm _terminate_charge_alarm _over_temp_alarm _terminate_discharge_alarm _remaining_capacity_alarm _remaining_time_alarm _initialized _discharging _fully_charged _fully_discharged ))

(defmethod rr_openrover_driver_msgs::SmartBatteryStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:over_charged_alarm __over_charged_alarm) nil)
    ((:terminate_charge_alarm __terminate_charge_alarm) nil)
    ((:over_temp_alarm __over_temp_alarm) nil)
    ((:terminate_discharge_alarm __terminate_discharge_alarm) nil)
    ((:remaining_capacity_alarm __remaining_capacity_alarm) nil)
    ((:remaining_time_alarm __remaining_time_alarm) nil)
    ((:initialized __initialized) nil)
    ((:discharging __discharging) nil)
    ((:fully_charged __fully_charged) nil)
    ((:fully_discharged __fully_discharged) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _over_charged_alarm __over_charged_alarm)
   (setq _terminate_charge_alarm __terminate_charge_alarm)
   (setq _over_temp_alarm __over_temp_alarm)
   (setq _terminate_discharge_alarm __terminate_discharge_alarm)
   (setq _remaining_capacity_alarm __remaining_capacity_alarm)
   (setq _remaining_time_alarm __remaining_time_alarm)
   (setq _initialized __initialized)
   (setq _discharging __discharging)
   (setq _fully_charged __fully_charged)
   (setq _fully_discharged __fully_discharged)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:over_charged_alarm
   (&optional (__over_charged_alarm :null))
   (if (not (eq __over_charged_alarm :null)) (setq _over_charged_alarm __over_charged_alarm)) _over_charged_alarm)
  (:terminate_charge_alarm
   (&optional (__terminate_charge_alarm :null))
   (if (not (eq __terminate_charge_alarm :null)) (setq _terminate_charge_alarm __terminate_charge_alarm)) _terminate_charge_alarm)
  (:over_temp_alarm
   (&optional (__over_temp_alarm :null))
   (if (not (eq __over_temp_alarm :null)) (setq _over_temp_alarm __over_temp_alarm)) _over_temp_alarm)
  (:terminate_discharge_alarm
   (&optional (__terminate_discharge_alarm :null))
   (if (not (eq __terminate_discharge_alarm :null)) (setq _terminate_discharge_alarm __terminate_discharge_alarm)) _terminate_discharge_alarm)
  (:remaining_capacity_alarm
   (&optional (__remaining_capacity_alarm :null))
   (if (not (eq __remaining_capacity_alarm :null)) (setq _remaining_capacity_alarm __remaining_capacity_alarm)) _remaining_capacity_alarm)
  (:remaining_time_alarm
   (&optional (__remaining_time_alarm :null))
   (if (not (eq __remaining_time_alarm :null)) (setq _remaining_time_alarm __remaining_time_alarm)) _remaining_time_alarm)
  (:initialized
   (&optional (__initialized :null))
   (if (not (eq __initialized :null)) (setq _initialized __initialized)) _initialized)
  (:discharging
   (&optional (__discharging :null))
   (if (not (eq __discharging :null)) (setq _discharging __discharging)) _discharging)
  (:fully_charged
   (&optional (__fully_charged :null))
   (if (not (eq __fully_charged :null)) (setq _fully_charged __fully_charged)) _fully_charged)
  (:fully_discharged
   (&optional (__fully_discharged :null))
   (if (not (eq __fully_discharged :null)) (setq _fully_discharged __fully_discharged)) _fully_discharged)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _over_charged_alarm
    1
    ;; bool _terminate_charge_alarm
    1
    ;; bool _over_temp_alarm
    1
    ;; bool _terminate_discharge_alarm
    1
    ;; bool _remaining_capacity_alarm
    1
    ;; bool _remaining_time_alarm
    1
    ;; bool _initialized
    1
    ;; bool _discharging
    1
    ;; bool _fully_charged
    1
    ;; bool _fully_discharged
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _over_charged_alarm
       (if _over_charged_alarm (write-byte -1 s) (write-byte 0 s))
     ;; bool _terminate_charge_alarm
       (if _terminate_charge_alarm (write-byte -1 s) (write-byte 0 s))
     ;; bool _over_temp_alarm
       (if _over_temp_alarm (write-byte -1 s) (write-byte 0 s))
     ;; bool _terminate_discharge_alarm
       (if _terminate_discharge_alarm (write-byte -1 s) (write-byte 0 s))
     ;; bool _remaining_capacity_alarm
       (if _remaining_capacity_alarm (write-byte -1 s) (write-byte 0 s))
     ;; bool _remaining_time_alarm
       (if _remaining_time_alarm (write-byte -1 s) (write-byte 0 s))
     ;; bool _initialized
       (if _initialized (write-byte -1 s) (write-byte 0 s))
     ;; bool _discharging
       (if _discharging (write-byte -1 s) (write-byte 0 s))
     ;; bool _fully_charged
       (if _fully_charged (write-byte -1 s) (write-byte 0 s))
     ;; bool _fully_discharged
       (if _fully_discharged (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _over_charged_alarm
     (setq _over_charged_alarm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _terminate_charge_alarm
     (setq _terminate_charge_alarm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _over_temp_alarm
     (setq _over_temp_alarm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _terminate_discharge_alarm
     (setq _terminate_discharge_alarm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _remaining_capacity_alarm
     (setq _remaining_capacity_alarm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _remaining_time_alarm
     (setq _remaining_time_alarm (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _initialized
     (setq _initialized (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _discharging
     (setq _discharging (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fully_charged
     (setq _fully_charged (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fully_discharged
     (setq _fully_discharged (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get rr_openrover_driver_msgs::SmartBatteryStatus :md5sum-) "a952a8feedea27cab4667095d349334c")
(setf (get rr_openrover_driver_msgs::SmartBatteryStatus :datatype-) "rr_openrover_driver_msgs/SmartBatteryStatus")
(setf (get rr_openrover_driver_msgs::SmartBatteryStatus :definition-)
      "Header header

bool over_charged_alarm
bool terminate_charge_alarm
bool over_temp_alarm
bool terminate_discharge_alarm
bool remaining_capacity_alarm
bool remaining_time_alarm

bool initialized
bool discharging
bool fully_charged
bool fully_discharged

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



(provide :rr_openrover_driver_msgs/SmartBatteryStatus "a952a8feedea27cab4667095d349334c")


