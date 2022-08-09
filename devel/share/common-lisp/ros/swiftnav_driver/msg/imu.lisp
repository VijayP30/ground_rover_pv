; Auto-generated. Do not edit!


(cl:in-package swiftnav_driver-msg)


;//! \htmlinclude imu.msg.html

(cl:defclass <imu> (roslisp-msg-protocol:ros-message)
  ((tow
    :reader tow
    :initarg :tow
    :type cl:integer
    :initform 0)
   (acc
    :reader acc
    :initarg :acc
    :type swiftnav_driver-msg:s16_Vec3
    :initform (cl:make-instance 'swiftnav_driver-msg:s16_Vec3))
   (gyr
    :reader gyr
    :initarg :gyr
    :type swiftnav_driver-msg:s16_Vec3
    :initform (cl:make-instance 'swiftnav_driver-msg:s16_Vec3)))
)

(cl:defclass imu (<imu>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <imu>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'imu)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swiftnav_driver-msg:<imu> is deprecated: use swiftnav_driver-msg:imu instead.")))

(cl:ensure-generic-function 'tow-val :lambda-list '(m))
(cl:defmethod tow-val ((m <imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swiftnav_driver-msg:tow-val is deprecated.  Use swiftnav_driver-msg:tow instead.")
  (tow m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swiftnav_driver-msg:acc-val is deprecated.  Use swiftnav_driver-msg:acc instead.")
  (acc m))

(cl:ensure-generic-function 'gyr-val :lambda-list '(m))
(cl:defmethod gyr-val ((m <imu>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swiftnav_driver-msg:gyr-val is deprecated.  Use swiftnav_driver-msg:gyr instead.")
  (gyr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <imu>) ostream)
  "Serializes a message object of type '<imu>"
  (cl:let* ((signed (cl:slot-value msg 'tow)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gyr) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <imu>) istream)
  "Deserializes a message object of type '<imu>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tow) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'acc) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'gyr) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<imu>)))
  "Returns string type for a message object of type '<imu>"
  "swiftnav_driver/imu")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'imu)))
  "Returns string type for a message object of type 'imu"
  "swiftnav_driver/imu")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<imu>)))
  "Returns md5sum for a message object of type '<imu>"
  "b2387b2ae5c3f1cac7484571dd69baad")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'imu)))
  "Returns md5sum for a message object of type 'imu"
  "b2387b2ae5c3f1cac7484571dd69baad")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<imu>)))
  "Returns full string definition for message of type '<imu>"
  (cl:format cl:nil "int32 tow~%s16_Vec3 acc~%s16_Vec3 gyr~%================================================================================~%MSG: swiftnav_driver/s16_Vec3~%int16 x~%int16 y~%int16 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'imu)))
  "Returns full string definition for message of type 'imu"
  (cl:format cl:nil "int32 tow~%s16_Vec3 acc~%s16_Vec3 gyr~%================================================================================~%MSG: swiftnav_driver/s16_Vec3~%int16 x~%int16 y~%int16 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <imu>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gyr))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <imu>))
  "Converts a ROS message object to a list"
  (cl:list 'imu
    (cl:cons ':tow (tow msg))
    (cl:cons ':acc (acc msg))
    (cl:cons ':gyr (gyr msg))
))
