; Auto-generated. Do not edit!


(cl:in-package rr_openrover_driver_msgs-msg)


;//! \htmlinclude RawRrOpenroverDriverMedRateData.msg.html

(cl:defclass <RawRrOpenroverDriverMedRateData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (reg_pwr_total_current
    :reader reg_pwr_total_current
    :initarg :reg_pwr_total_current
    :type cl:integer
    :initform 0)
   (reg_motor_fb_rpm_left
    :reader reg_motor_fb_rpm_left
    :initarg :reg_motor_fb_rpm_left
    :type cl:integer
    :initform 0)
   (reg_motor_fb_rpm_right
    :reader reg_motor_fb_rpm_right
    :initarg :reg_motor_fb_rpm_right
    :type cl:integer
    :initform 0)
   (reg_flipper_fb_position_pot1
    :reader reg_flipper_fb_position_pot1
    :initarg :reg_flipper_fb_position_pot1
    :type cl:integer
    :initform 0)
   (reg_flipper_fb_position_pot2
    :reader reg_flipper_fb_position_pot2
    :initarg :reg_flipper_fb_position_pot2
    :type cl:integer
    :initform 0)
   (reg_motor_fb_current_left
    :reader reg_motor_fb_current_left
    :initarg :reg_motor_fb_current_left
    :type cl:integer
    :initform 0)
   (reg_motor_fb_current_right
    :reader reg_motor_fb_current_right
    :initarg :reg_motor_fb_current_right
    :type cl:integer
    :initform 0)
   (reg_motor_charger_state
    :reader reg_motor_charger_state
    :initarg :reg_motor_charger_state
    :type cl:integer
    :initform 0)
   (reg_power_a_current
    :reader reg_power_a_current
    :initarg :reg_power_a_current
    :type cl:integer
    :initform 0)
   (reg_power_b_current
    :reader reg_power_b_current
    :initarg :reg_power_b_current
    :type cl:integer
    :initform 0)
   (reg_motor_flipper_angle
    :reader reg_motor_flipper_angle
    :initarg :reg_motor_flipper_angle
    :type cl:integer
    :initform 0)
   (battery_current_a
    :reader battery_current_a
    :initarg :battery_current_a
    :type cl:fixnum
    :initform 0)
   (battery_current_b
    :reader battery_current_b
    :initarg :battery_current_b
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RawRrOpenroverDriverMedRateData (<RawRrOpenroverDriverMedRateData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawRrOpenroverDriverMedRateData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawRrOpenroverDriverMedRateData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rr_openrover_driver_msgs-msg:<RawRrOpenroverDriverMedRateData> is deprecated: use rr_openrover_driver_msgs-msg:RawRrOpenroverDriverMedRateData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RawRrOpenroverDriverMedRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:header-val is deprecated.  Use rr_openrover_driver_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'reg_pwr_total_current-val :lambda-list '(m))
(cl:defmethod reg_pwr_total_current-val ((m <RawRrOpenroverDriverMedRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:reg_pwr_total_current-val is deprecated.  Use rr_openrover_driver_msgs-msg:reg_pwr_total_current instead.")
  (reg_pwr_total_current m))

(cl:ensure-generic-function 'reg_motor_fb_rpm_left-val :lambda-list '(m))
(cl:defmethod reg_motor_fb_rpm_left-val ((m <RawRrOpenroverDriverMedRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:reg_motor_fb_rpm_left-val is deprecated.  Use rr_openrover_driver_msgs-msg:reg_motor_fb_rpm_left instead.")
  (reg_motor_fb_rpm_left m))

(cl:ensure-generic-function 'reg_motor_fb_rpm_right-val :lambda-list '(m))
(cl:defmethod reg_motor_fb_rpm_right-val ((m <RawRrOpenroverDriverMedRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:reg_motor_fb_rpm_right-val is deprecated.  Use rr_openrover_driver_msgs-msg:reg_motor_fb_rpm_right instead.")
  (reg_motor_fb_rpm_right m))

(cl:ensure-generic-function 'reg_flipper_fb_position_pot1-val :lambda-list '(m))
(cl:defmethod reg_flipper_fb_position_pot1-val ((m <RawRrOpenroverDriverMedRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:reg_flipper_fb_position_pot1-val is deprecated.  Use rr_openrover_driver_msgs-msg:reg_flipper_fb_position_pot1 instead.")
  (reg_flipper_fb_position_pot1 m))

(cl:ensure-generic-function 'reg_flipper_fb_position_pot2-val :lambda-list '(m))
(cl:defmethod reg_flipper_fb_position_pot2-val ((m <RawRrOpenroverDriverMedRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:reg_flipper_fb_position_pot2-val is deprecated.  Use rr_openrover_driver_msgs-msg:reg_flipper_fb_position_pot2 instead.")
  (reg_flipper_fb_position_pot2 m))

(cl:ensure-generic-function 'reg_motor_fb_current_left-val :lambda-list '(m))
(cl:defmethod reg_motor_fb_current_left-val ((m <RawRrOpenroverDriverMedRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:reg_motor_fb_current_left-val is deprecated.  Use rr_openrover_driver_msgs-msg:reg_motor_fb_current_left instead.")
  (reg_motor_fb_current_left m))

(cl:ensure-generic-function 'reg_motor_fb_current_right-val :lambda-list '(m))
(cl:defmethod reg_motor_fb_current_right-val ((m <RawRrOpenroverDriverMedRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:reg_motor_fb_current_right-val is deprecated.  Use rr_openrover_driver_msgs-msg:reg_motor_fb_current_right instead.")
  (reg_motor_fb_current_right m))

(cl:ensure-generic-function 'reg_motor_charger_state-val :lambda-list '(m))
(cl:defmethod reg_motor_charger_state-val ((m <RawRrOpenroverDriverMedRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:reg_motor_charger_state-val is deprecated.  Use rr_openrover_driver_msgs-msg:reg_motor_charger_state instead.")
  (reg_motor_charger_state m))

(cl:ensure-generic-function 'reg_power_a_current-val :lambda-list '(m))
(cl:defmethod reg_power_a_current-val ((m <RawRrOpenroverDriverMedRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:reg_power_a_current-val is deprecated.  Use rr_openrover_driver_msgs-msg:reg_power_a_current instead.")
  (reg_power_a_current m))

(cl:ensure-generic-function 'reg_power_b_current-val :lambda-list '(m))
(cl:defmethod reg_power_b_current-val ((m <RawRrOpenroverDriverMedRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:reg_power_b_current-val is deprecated.  Use rr_openrover_driver_msgs-msg:reg_power_b_current instead.")
  (reg_power_b_current m))

(cl:ensure-generic-function 'reg_motor_flipper_angle-val :lambda-list '(m))
(cl:defmethod reg_motor_flipper_angle-val ((m <RawRrOpenroverDriverMedRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:reg_motor_flipper_angle-val is deprecated.  Use rr_openrover_driver_msgs-msg:reg_motor_flipper_angle instead.")
  (reg_motor_flipper_angle m))

(cl:ensure-generic-function 'battery_current_a-val :lambda-list '(m))
(cl:defmethod battery_current_a-val ((m <RawRrOpenroverDriverMedRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:battery_current_a-val is deprecated.  Use rr_openrover_driver_msgs-msg:battery_current_a instead.")
  (battery_current_a m))

(cl:ensure-generic-function 'battery_current_b-val :lambda-list '(m))
(cl:defmethod battery_current_b-val ((m <RawRrOpenroverDriverMedRateData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rr_openrover_driver_msgs-msg:battery_current_b-val is deprecated.  Use rr_openrover_driver_msgs-msg:battery_current_b instead.")
  (battery_current_b m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawRrOpenroverDriverMedRateData>) ostream)
  "Serializes a message object of type '<RawRrOpenroverDriverMedRateData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'reg_pwr_total_current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reg_motor_fb_rpm_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reg_motor_fb_rpm_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reg_flipper_fb_position_pot1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reg_flipper_fb_position_pot2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reg_motor_fb_current_left)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reg_motor_fb_current_right)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reg_motor_charger_state)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reg_power_a_current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reg_power_b_current)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'reg_motor_flipper_angle)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'battery_current_a)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'battery_current_b)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawRrOpenroverDriverMedRateData>) istream)
  "Deserializes a message object of type '<RawRrOpenroverDriverMedRateData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_pwr_total_current) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_motor_fb_rpm_left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_motor_fb_rpm_right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_flipper_fb_position_pot1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_flipper_fb_position_pot2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_motor_fb_current_left) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_motor_fb_current_right) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_motor_charger_state) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_power_a_current) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_power_b_current) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reg_motor_flipper_angle) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery_current_a) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'battery_current_b) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawRrOpenroverDriverMedRateData>)))
  "Returns string type for a message object of type '<RawRrOpenroverDriverMedRateData>"
  "rr_openrover_driver_msgs/RawRrOpenroverDriverMedRateData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawRrOpenroverDriverMedRateData)))
  "Returns string type for a message object of type 'RawRrOpenroverDriverMedRateData"
  "rr_openrover_driver_msgs/RawRrOpenroverDriverMedRateData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawRrOpenroverDriverMedRateData>)))
  "Returns md5sum for a message object of type '<RawRrOpenroverDriverMedRateData>"
  "8d1326600b05770e80fedaabbf1fed8a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawRrOpenroverDriverMedRateData)))
  "Returns md5sum for a message object of type 'RawRrOpenroverDriverMedRateData"
  "8d1326600b05770e80fedaabbf1fed8a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawRrOpenroverDriverMedRateData>)))
  "Returns full string definition for message of type '<RawRrOpenroverDriverMedRateData>"
  (cl:format cl:nil "Header header~%int32 reg_pwr_total_current~%int32 reg_motor_fb_rpm_left~%int32 reg_motor_fb_rpm_right~%int32 reg_flipper_fb_position_pot1~%int32 reg_flipper_fb_position_pot2~%int32 reg_motor_fb_current_left~%int32 reg_motor_fb_current_right~%int32 reg_motor_charger_state~%int32 reg_power_a_current~%int32 reg_power_b_current~%int32 reg_motor_flipper_angle~%int16 battery_current_a~%int16 battery_current_b~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawRrOpenroverDriverMedRateData)))
  "Returns full string definition for message of type 'RawRrOpenroverDriverMedRateData"
  (cl:format cl:nil "Header header~%int32 reg_pwr_total_current~%int32 reg_motor_fb_rpm_left~%int32 reg_motor_fb_rpm_right~%int32 reg_flipper_fb_position_pot1~%int32 reg_flipper_fb_position_pot2~%int32 reg_motor_fb_current_left~%int32 reg_motor_fb_current_right~%int32 reg_motor_charger_state~%int32 reg_power_a_current~%int32 reg_power_b_current~%int32 reg_motor_flipper_angle~%int16 battery_current_a~%int16 battery_current_b~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawRrOpenroverDriverMedRateData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawRrOpenroverDriverMedRateData>))
  "Converts a ROS message object to a list"
  (cl:list 'RawRrOpenroverDriverMedRateData
    (cl:cons ':header (header msg))
    (cl:cons ':reg_pwr_total_current (reg_pwr_total_current msg))
    (cl:cons ':reg_motor_fb_rpm_left (reg_motor_fb_rpm_left msg))
    (cl:cons ':reg_motor_fb_rpm_right (reg_motor_fb_rpm_right msg))
    (cl:cons ':reg_flipper_fb_position_pot1 (reg_flipper_fb_position_pot1 msg))
    (cl:cons ':reg_flipper_fb_position_pot2 (reg_flipper_fb_position_pot2 msg))
    (cl:cons ':reg_motor_fb_current_left (reg_motor_fb_current_left msg))
    (cl:cons ':reg_motor_fb_current_right (reg_motor_fb_current_right msg))
    (cl:cons ':reg_motor_charger_state (reg_motor_charger_state msg))
    (cl:cons ':reg_power_a_current (reg_power_a_current msg))
    (cl:cons ':reg_power_b_current (reg_power_b_current msg))
    (cl:cons ':reg_motor_flipper_angle (reg_motor_flipper_angle msg))
    (cl:cons ':battery_current_a (battery_current_a msg))
    (cl:cons ':battery_current_b (battery_current_b msg))
))
