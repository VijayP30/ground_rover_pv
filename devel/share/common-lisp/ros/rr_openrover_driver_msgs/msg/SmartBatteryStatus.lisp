; Auto-generated. Do not edit!


(cl:in-package rr_openrover_driver_msgs-msg)


;//! \htmlinclude SmartBatteryStatus.msg.html

(cl:defclass <SmartBatteryStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (over_charged_alarm
    :reader over_charged_alarm
    :initarg :over_charged_alarm
    :type cl:boolean
    :initform cl:nil)
   (terminate_charge_alarm
    :reader terminate_charge_alarm
    :initarg :terminate_charge_alarm
    :type cl:boolean
    :initform cl:nil)
   (over_temp_alarm
    :reader over_temp_alarm
    :initarg :over_temp_alarm
    :type cl:boolean
    :initform cl:nil)
   (terminate_discharge_alarm
    :reader terminate_discharge_alarm
    :initarg :terminate_discharge_alarm
    :type cl:boolean
    :initform cl:nil)
   (remaining_capacity_alarm
    :reader remaining_capacity_alarm
    :initarg :remaining_capacity_alarm
    :type cl:boolean
    :initform cl:nil)
   (remaining_time_alarm
    :reader remaining_time_alarm
    :initarg :remaining_time_alarm
    :type cl:boolean
    :initform cl:nil)
   (initialized
    :reader initialized
    :initarg :initialized
    :type cl:boolean
    :initform cl:nil)
   (discharging
    :reader discharging
    :initarg :discharging
    :type cl:boolean
    :initform cl:nil)
   (fully_charged
    :reader fully_charged
    :initarg :fully_charged
    :type cl:boolean
    :initform cl:nil)
   (fully_discharged
    :reader fully_discharged
    :initarg :fully_discharged
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SmartBatteryStatus (<SmartBatteryStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SmartBatteryStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SmartBatteryStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rr_openrover_driver_msgs-msg:<SmartBatteryStatus> is deprecated: use rr_openrover_driver_msgs-msg:SmartBatteryStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SmartBatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:header-val is deprecated.  Use rr_openrover_driver_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'over_charged_alarm-val :lambda-list '(m))
(cl:defmethod over_charged_alarm-val ((m <SmartBatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:over_charged_alarm-val is deprecated.  Use rr_openrover_driver_msgs-msg:over_charged_alarm instead.")
  (over_charged_alarm m))

(cl:ensure-generic-function 'terminate_charge_alarm-val :lambda-list '(m))
(cl:defmethod terminate_charge_alarm-val ((m <SmartBatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:terminate_charge_alarm-val is deprecated.  Use rr_openrover_driver_msgs-msg:terminate_charge_alarm instead.")
  (terminate_charge_alarm m))

(cl:ensure-generic-function 'over_temp_alarm-val :lambda-list '(m))
(cl:defmethod over_temp_alarm-val ((m <SmartBatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:over_temp_alarm-val is deprecated.  Use rr_openrover_driver_msgs-msg:over_temp_alarm instead.")
  (over_temp_alarm m))

(cl:ensure-generic-function 'terminate_discharge_alarm-val :lambda-list '(m))
(cl:defmethod terminate_discharge_alarm-val ((m <SmartBatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:terminate_discharge_alarm-val is deprecated.  Use rr_openrover_driver_msgs-msg:terminate_discharge_alarm instead.")
  (terminate_discharge_alarm m))

(cl:ensure-generic-function 'remaining_capacity_alarm-val :lambda-list '(m))
(cl:defmethod remaining_capacity_alarm-val ((m <SmartBatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:remaining_capacity_alarm-val is deprecated.  Use rr_openrover_driver_msgs-msg:remaining_capacity_alarm instead.")
  (remaining_capacity_alarm m))

(cl:ensure-generic-function 'remaining_time_alarm-val :lambda-list '(m))
(cl:defmethod remaining_time_alarm-val ((m <SmartBatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:remaining_time_alarm-val is deprecated.  Use rr_openrover_driver_msgs-msg:remaining_time_alarm instead.")
  (remaining_time_alarm m))

(cl:ensure-generic-function 'initialized-val :lambda-list '(m))
(cl:defmethod initialized-val ((m <SmartBatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:initialized-val is deprecated.  Use rr_openrover_driver_msgs-msg:initialized instead.")
  (initialized m))

(cl:ensure-generic-function 'discharging-val :lambda-list '(m))
(cl:defmethod discharging-val ((m <SmartBatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:discharging-val is deprecated.  Use rr_openrover_driver_msgs-msg:discharging instead.")
  (discharging m))

(cl:ensure-generic-function 'fully_charged-val :lambda-list '(m))
(cl:defmethod fully_charged-val ((m <SmartBatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:fully_charged-val is deprecated.  Use rr_openrover_driver_msgs-msg:fully_charged instead.")
  (fully_charged m))

(cl:ensure-generic-function 'fully_discharged-val :lambda-list '(m))
(cl:defmethod fully_discharged-val ((m <SmartBatteryStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:fully_discharged-val is deprecated.  Use rr_openrover_driver_msgs-msg:fully_discharged instead.")
  (fully_discharged m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SmartBatteryStatus>) ostream)
  "Serializes a message object of type '<SmartBatteryStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'over_charged_alarm) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'terminate_charge_alarm) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'over_temp_alarm) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'terminate_discharge_alarm) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'remaining_capacity_alarm) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'remaining_time_alarm) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'initialized) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'discharging) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fully_charged) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'fully_discharged) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SmartBatteryStatus>) istream)
  "Deserializes a message object of type '<SmartBatteryStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'over_charged_alarm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'terminate_charge_alarm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'over_temp_alarm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'terminate_discharge_alarm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'remaining_capacity_alarm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'remaining_time_alarm) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'initialized) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'discharging) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fully_charged) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'fully_discharged) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SmartBatteryStatus>)))
  "Returns string type for a message object of type '<SmartBatteryStatus>"
  "rr_openrover_driver_msgs/SmartBatteryStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SmartBatteryStatus)))
  "Returns string type for a message object of type 'SmartBatteryStatus"
  "rr_openrover_driver_msgs/SmartBatteryStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SmartBatteryStatus>)))
  "Returns md5sum for a message object of type '<SmartBatteryStatus>"
  "a952a8feedea27cab4667095d349334c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SmartBatteryStatus)))
  "Returns md5sum for a message object of type 'SmartBatteryStatus"
  "a952a8feedea27cab4667095d349334c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SmartBatteryStatus>)))
  "Returns full string definition for message of type '<SmartBatteryStatus>"
  (cl:format cl:nil "Header header~%~%bool over_charged_alarm~%bool terminate_charge_alarm~%bool over_temp_alarm~%bool terminate_discharge_alarm~%bool remaining_capacity_alarm~%bool remaining_time_alarm~%~%bool initialized~%bool discharging~%bool fully_charged~%bool fully_discharged~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SmartBatteryStatus)))
  "Returns full string definition for message of type 'SmartBatteryStatus"
  (cl:format cl:nil "Header header~%~%bool over_charged_alarm~%bool terminate_charge_alarm~%bool over_temp_alarm~%bool terminate_discharge_alarm~%bool remaining_capacity_alarm~%bool remaining_time_alarm~%~%bool initialized~%bool discharging~%bool fully_charged~%bool fully_discharged~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SmartBatteryStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SmartBatteryStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SmartBatteryStatus
    (cl:cons ':header (header msg))
    (cl:cons ':over_charged_alarm (over_charged_alarm msg))
    (cl:cons ':terminate_charge_alarm (terminate_charge_alarm msg))
    (cl:cons ':over_temp_alarm (over_temp_alarm msg))
    (cl:cons ':terminate_discharge_alarm (terminate_discharge_alarm msg))
    (cl:cons ':remaining_capacity_alarm (remaining_capacity_alarm msg))
    (cl:cons ':remaining_time_alarm (remaining_time_alarm msg))
    (cl:cons ':initialized (initialized msg))
    (cl:cons ':discharging (discharging msg))
    (cl:cons ':fully_charged (fully_charged msg))
    (cl:cons ':fully_discharged (fully_discharged msg))
))
