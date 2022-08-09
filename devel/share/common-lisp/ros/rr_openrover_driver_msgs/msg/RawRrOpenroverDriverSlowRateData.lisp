; Auto-generated. Do not edit!


(cl:in-package rr_openrover_driver_msgs-msg)


;//! \htmlinclude RawRrOpenroverDriverSlowRateData.msg.html

(cl:defclass <RawRrOpenroverDriverSlowRateData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (reg_motor_fault_flag_left
    :reader reg_motor_fault_flag_left
    :initarg :reg_motor_fault_flag_left
    :type cl:integer
    :initform 0)
   (reg_motor_temp_left
    :reader reg_motor_temp_left
    :initarg :reg_motor_temp_left
    :type cl:integer
    :initform 0)
   (reg_motor_temp_right
    :reader reg_motor_temp_right
    :initarg :reg_motor_temp_right
    :type cl:integer
    :initform 0)
   (reg_power_bat_voltage_a
    :reader reg_power_bat_voltage_a
    :initarg :reg_power_bat_voltage_a
    :type cl:integer
    :initform 0)
   (reg_power_bat_voltage_b
    :reader reg_power_bat_voltage_b
    :initarg :reg_power_bat_voltage_b
    :type cl:integer
    :initform 0)
   (reg_robot_rel_soc_a
    :reader reg_robot_rel_soc_a
    :initarg :reg_robot_rel_soc_a
    :type cl:integer
    :initform 0)
   (reg_robot_rel_soc_b
    :reader reg_robot_rel_soc_b
    :initarg :reg_robot_rel_soc_b
    :type cl:integer
    :initform 0)
   (battery_mode_a
    :reader battery_mode_a
    :initarg :battery_mode_a
    :type cl:fixnum
    :initform 0)
   (battery_mode_b
    :reader battery_mode_b
    :initarg :battery_mode_b
    :type cl:fixnum
    :initform 0)
   (battery_temp_a
    :reader battery_temp_a
    :initarg :battery_temp_a
    :type cl:fixnum
    :initform 0)
   (battery_temp_b
    :reader battery_temp_b
    :initarg :battery_temp_b
    :type cl:fixnum
    :initform 0)
   (battery_voltage_a
    :reader battery_voltage_a
    :initarg :battery_voltage_a
    :type cl:fixnum
    :initform 0)
   (battery_voltage_b
    :reader battery_voltage_b
    :initarg :battery_voltage_b
    :type cl:fixnum
    :initform 0)
   (buildno
    :reader buildno
    :initarg :buildno
    :type cl:integer
    :initform 0))
)

(cl:defclass RawRrOpenroverDriverSlowRateData (<RawRrOpenroverDriverSlowRateData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawRrOpenroverDriverSlowRateData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawRrOpenroverDriverSlowRateData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rr_openrover_driver_msgs-msg:<RawRrOpenroverDriverSlowRateData> is deprecated: use rr_openrover_driver_msgs-msg:RawRrOpenroverDriverSlowRateData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RawRrOpenroverDriverSlowRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:header-val is deprecated.  Use rr_openrover_driver_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'reg_motor_fault_flag_left-val :lambda-list '(m))
(cl:defmethod reg_motor_fault_flag_left-val ((m <RawRrOpenroverDriverSlowRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:reg_motor_fault_flag_left-val is deprecated.  Use rr_openrover_driver_msgs-msg:reg_motor_fault_flag_left instead.")
  (reg_motor_fault_flag_left m))

(cl:ensure-generic-function 'reg_motor_temp_left-val :lambda-list '(m))
(cl:defmethod reg_motor_temp_left-val ((m <RawRrOpenroverDriverSlowRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:reg_motor_temp_left-val is deprecated.  Use rr_openrover_driver_msgs-msg:reg_motor_temp_left instead.")
  (reg_motor_temp_left m))

(cl:ensure-generic-function 'reg_motor_temp_right-val :lambda-list '(m))
(cl:defmethod reg_motor_temp_right-val ((m <RawRrOpenroverDriverSlowRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:reg_motor_temp_right-val is deprecated.  Use rr_openrover_driver_msgs-msg:reg_motor_temp_right instead.")
  (reg_motor_temp_right m))

(cl:ensure-generic-function 'reg_power_bat_voltage_a-val :lambda-list '(m))
(cl:defmethod reg_power_bat_voltage_a-val ((m <RawRrOpenroverDriverSlowRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:reg_power_bat_voltage_a-val is deprecated.  Use rr_openrover_driver_msgs-msg:reg_power_bat_voltage_a instead.")
  (reg_power_bat_voltage_a m))

(cl:ensure-generic-function 'reg_power_bat_voltage_b-val :lambda-list '(m))
(cl:defmethod reg_power_bat_voltage_b-val ((m <RawRrOpenroverDriverSlowRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:reg_power_bat_voltage_b-val is deprecated.  Use rr_openrover_driver_msgs-msg:reg_power_bat_voltage_b instead.")
  (reg_power_bat_voltage_b m))

(cl:ensure-generic-function 'reg_robot_rel_soc_a-val :lambda-list '(m))
(cl:defmethod reg_robot_rel_soc_a-val ((m <RawRrOpenroverDriverSlowRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:reg_robot_rel_soc_a-val is deprecated.  Use rr_openrover_driver_msgs-msg:reg_robot_rel_soc_a instead.")
  (reg_robot_rel_soc_a m))

(cl:ensure-generic-function 'reg_robot_rel_soc_b-val :lambda-list '(m))
(cl:defmethod reg_robot_rel_soc_b-val ((m <RawRrOpenroverDriverSlowRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:reg_robot_rel_soc_b-val is deprecated.  Use rr_openrover_driver_msgs-msg:reg_robot_rel_soc_b instead.")
  (reg_robot_rel_soc_b m))

(cl:ensure-generic-function 'battery_mode_a-val :lambda-list '(m))
(cl:defmethod battery_mode_a-val ((m <RawRrOpenroverDriverSlowRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:battery_mode_a-val is deprecated.  Use rr_openrover_driver_msgs-msg:battery_mode_a instead.")
  (battery_mode_a m))

(cl:ensure-generic-function 'battery_mode_b-val :lambda-list '(m))
(cl:defmethod battery_mode_b-val ((m <RawRrOpenroverDriverSlowRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:battery_mode_b-val is deprecated.  Use rr_openrover_driver_msgs-msg:battery_mode_b instead.")
  (battery_mode_b m))

(cl:ensure-generic-function 'battery_temp_a-val :lambda-list '(m))
(cl:defmethod battery_temp_a-val ((m <RawRrOpenroverDriverSlowRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:battery_temp_a-val is deprecated.  Use rr_openrover_driver_msgs-msg:battery_temp_a instead.")
  (battery_temp_a m))

(cl:ensure-generic-function 'battery_temp_b-val :lambda-list '(m))
(cl:defmethod battery_temp_b-val ((m <RawRrOpenroverDriverSlowRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:battery_temp_b-val is deprecated.  Use rr_openrover_driver_msgs-msg:battery_temp_b instead.")
  (battery_temp_b m))

(cl:ensure-generic-function 'battery_voltage_a-val :lambda-list '(m))
(cl:defmethod battery_voltage_a-val ((m <RawRrOpenroverDriverSlowRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:battery_voltage_a-val is deprecated.  Use rr_openrover_driver_msgs-msg:battery_voltage_a instead.")
  (battery_voltage_a m))

(cl:ensure-generic-function 'battery_voltage_b-val :lambda-list '(m))
(cl:defmethod battery_voltage_b-val ((m <RawRrOpenroverDriverSlowRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:battery_voltage_b-val is deprecated.  Use rr_openrover_driver_msgs-msg:battery_voltage_b instead.")
  (battery_voltage_b m))

(cl:ensure-generic-function 'buildno-val :lambda-list '(m))
(cl:defmethod buildno-val ((m <RawRrOpenroverDriverSlowRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:buildno-val is deprecated.  Use rr_openrover_driver_msgs-msg:buildno instead.")
  (buildno m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawRrOpenroverDriverSlowRateData>) ostream)
  "Serializes a message object of type '<RawRrOpenroverDriverSlowRateData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'reg_motor_fault_flag_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reg_motor_temp_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reg_motor_temp_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reg_power_bat_voltage_a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reg_power_bat_voltage_b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reg_robot_rel_soc_a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reg_robot_rel_soc_b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_mode_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery_mode_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_mode_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery_mode_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_temp_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery_temp_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_temp_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery_temp_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_voltage_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery_voltage_a)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_voltage_b)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery_voltage_b)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'buildno)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawRrOpenroverDriverSlowRateData>) istream)
  "Deserializes a message object of type '<RawRrOpenroverDriverSlowRateData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_motor_fault_flag_left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_motor_temp_left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_motor_temp_right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_power_bat_voltage_a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_power_bat_voltage_b) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_robot_rel_soc_a) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_robot_rel_soc_b) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_mode_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery_mode_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_mode_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery_mode_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_temp_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery_temp_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_temp_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery_temp_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_voltage_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery_voltage_a)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'battery_voltage_b)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'battery_voltage_b)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'buildno) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawRrOpenroverDriverSlowRateData>)))
  "Returns string type for a message object of type '<RawRrOpenroverDriverSlowRateData>"
  "rr_openrover_driver_msgs/RawRrOpenroverDriverSlowRateData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawRrOpenroverDriverSlowRateData)))
  "Returns string type for a message object of type 'RawRrOpenroverDriverSlowRateData"
  "rr_openrover_driver_msgs/RawRrOpenroverDriverSlowRateData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawRrOpenroverDriverSlowRateData>)))
  "Returns md5sum for a message object of type '<RawRrOpenroverDriverSlowRateData>"
  "81c26593ff4507cd00407918de2b2593")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawRrOpenroverDriverSlowRateData)))
  "Returns md5sum for a message object of type 'RawRrOpenroverDriverSlowRateData"
  "81c26593ff4507cd00407918de2b2593")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawRrOpenroverDriverSlowRateData>)))
  "Returns full string definition for message of type '<RawRrOpenroverDriverSlowRateData>"
  (cl:format cl:nil "Header header~%int32 reg_motor_fault_flag_left~%int32 reg_motor_temp_left~%int32 reg_motor_temp_right~%int32 reg_power_bat_voltage_a~%int32 reg_power_bat_voltage_b~%int32 reg_robot_rel_soc_a~%int32 reg_robot_rel_soc_b~%uint16 battery_mode_a~%uint16 battery_mode_b~%uint16 battery_temp_a~%uint16 battery_temp_b~%uint16 battery_voltage_a~%uint16 battery_voltage_b~%int32 buildno~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawRrOpenroverDriverSlowRateData)))
  "Returns full string definition for message of type 'RawRrOpenroverDriverSlowRateData"
  (cl:format cl:nil "Header header~%int32 reg_motor_fault_flag_left~%int32 reg_motor_temp_left~%int32 reg_motor_temp_right~%int32 reg_power_bat_voltage_a~%int32 reg_power_bat_voltage_b~%int32 reg_robot_rel_soc_a~%int32 reg_robot_rel_soc_b~%uint16 battery_mode_a~%uint16 battery_mode_b~%uint16 battery_temp_a~%uint16 battery_temp_b~%uint16 battery_voltage_a~%uint16 battery_voltage_b~%int32 buildno~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawRrOpenroverDriverSlowRateData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     2
     2
     2
     2
     2
     2
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawRrOpenroverDriverSlowRateData>))
  "Converts a ROS message object to a list"
  (cl:list 'RawRrOpenroverDriverSlowRateData
    (cl:cons ':header (header msg))
    (cl:cons ':reg_motor_fault_flag_left (reg_motor_fault_flag_left msg))
    (cl:cons ':reg_motor_temp_left (reg_motor_temp_left msg))
    (cl:cons ':reg_motor_temp_right (reg_motor_temp_right msg))
    (cl:cons ':reg_power_bat_voltage_a (reg_power_bat_voltage_a msg))
    (cl:cons ':reg_power_bat_voltage_b (reg_power_bat_voltage_b msg))
    (cl:cons ':reg_robot_rel_soc_a (reg_robot_rel_soc_a msg))
    (cl:cons ':reg_robot_rel_soc_b (reg_robot_rel_soc_b msg))
    (cl:cons ':battery_mode_a (battery_mode_a msg))
    (cl:cons ':battery_mode_b (battery_mode_b msg))
    (cl:cons ':battery_temp_a (battery_temp_a msg))
    (cl:cons ':battery_temp_b (battery_temp_b msg))
    (cl:cons ':battery_voltage_a (battery_voltage_a msg))
    (cl:cons ':battery_voltage_b (battery_voltage_b msg))
    (cl:cons ':buildno (buildno msg))
))
