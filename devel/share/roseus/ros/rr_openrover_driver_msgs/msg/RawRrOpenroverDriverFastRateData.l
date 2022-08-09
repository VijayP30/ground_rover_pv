;; Auto-generated. Do not edit!


(when (boundp 'rr_openrover_driver_msgs::RawRrOpenroverDriverFastRateData)
  (if (not (find-package "RR_OPENROVER_DRIVER_MSGS"))
    (make-package "RR_OPENROVER_DRIVER_MSGS"))
  (shadow 'RawRrOpenroverDriverFastRateData (find-package "RR_OPENROVER_DRIVER_MSGS")))
(unless (find-package "RR_OPENROVER_DRIVER_MSGS::RAWRROPENROVERDRIVERFASTRATEDATA")
  (make-package "RR_OPENROVER_DRIVER_MSGS::RAWRROPENROVERDRIVERFASTRATEDATA"))

(in-package "ROS")
;;//! \htmlinclude RawRrOpenroverDriverFastRateData.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rr_openrover_driver_msgs::RawRrOpenroverDriverFastRateData
  :super ros::object
  :slots (_header _left_motor _right_motor _flipper_motor ))

(defmethod rr_openrover_driver_msgs::RawRrOpenroverDriverFastRateData
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left_motor __left_motor) 0)
    ((:right_motor __right_motor) 0)
    ((:flipper_motor __flipper_motor) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _left_motor (round __left_motor))
   (setq _right_motor (round __right_motor))
   (setq _flipper_motor (round __flipper_motor))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left_motor
   (&optional __left_motor)
   (if __left_motor (setq _left_motor __left_motor)) _left_motor)
  (:right_motor
   (&optional __right_motor)
   (if __right_motor (setq _right_motor __right_motor)) _right_motor)
  (:flipper_motor
   (&optional __flipper_motor)
   (if __flipper_motor (setq _flipper_motor __flipper_motor)) _flipper_motor)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _left_motor
    4
    ;; int32 _right_motor
    4
    ;; int32 _flipper_motor
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _left_motor
       (write-long _left_motor s)
     ;; int32 _right_motor
       (write-long _right_motor s)
     ;; int32 _flipper_motor
       (write-long _flipper_motor s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _left_motor
     (setq _left_motor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _right_motor
     (setq _right_motor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _flipper_motor
     (setq _flipper_motor (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get rr_openrover_driver_msgs::RawRrOpenroverDriverFastRateData :md5sum-) "ac325592ef354d083265d71820563c4b")
(setf (get rr_openrover_driver_msgs::RawRrOpenroverDriverFastRateData :datatype-) "rr_openrover_driver_msgs/RawRrOpenroverDriverFastRateData")
(setf (get rr_openrover_driver_msgs::RawRrOpenroverDriverFastRateData :definition-)
      "Header header
int32 left_motor
int32 right_motor
int32 flipper_motor

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



(provide :rr_openrover_driver_msgs/RawRrOpenroverDriverFastRateData "ac325592ef354d083265d71820563c4b")


