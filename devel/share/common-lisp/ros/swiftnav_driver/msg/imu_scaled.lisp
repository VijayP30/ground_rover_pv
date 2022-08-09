; Auto-generated. Do not edit!


(cl:in-package swiftnav_driver-msg)


;//! \htmlinclude imu_scaled.msg.html

(cl:defclass <imu_scaled> (roslisp-msg-protocol:ros-message)
  ((tow
    :reader tow
    :initarg :tow
    :type cl:integer
    :initform 0)
   (acc
    :reader acc
    :initarg :acc
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (gyr
    :reader gyr
    :initarg :gyr
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass imu_scaled (<imu_scaled>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <imu_scaled>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'imu_scaled)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swiftnav_driver-msg:<imu_scaled> is deprecated: use swiftnav_driver-msg:imu_scaled instead.")))

(cl:ensure-generic-function 'tow-val :lambda-list '(m))
(cl:defmethod tow-val ((m <imu_scaled>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swiftnav_driver-msg:tow-val is deprecated.  Use swiftnav_driver-msg:tow instead.")
  (tow m))

(cl:ensure-generic-function 'acc-val :lambda-list '(m))
(cl:defmethod acc-val ((m <imu_scaled>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swiftnav_driver-msg:acc-val is deprecated.  Use swiftnav_driver-msg:acc instead.")
  (acc m))

(cl:ensure-generic-function 'gyr-val :lambda-list '(m))
(cl:defmethod gyr-val ((m <imu_scaled>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swiftnav_driver-msg:gyr-val is deprecated.  Use swiftnav_driver-msg:gyr instead.")
  (gyr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <imu_scaled>) ostream)
  "Serializes a message object of type '<imu_scaled>"
  (cl:let* ((signed (cl:slot-value msg 'tow)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'acc) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'gyr) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <imu_scaled>) istream)
  "Deserializes a message object of type '<imu_scaled>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<imu_scaled>)))
  "Returns string type for a message object of type '<imu_scaled>"
  "swiftnav_driver/imu_scaled")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'imu_scaled)))
  "Returns string type for a message object of type 'imu_scaled"
  "swiftnav_driver/imu_scaled")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<imu_scaled>)))
  "Returns md5sum for a message object of type '<imu_scaled>"
  "d3bec1428d9809c2fe2f8b896685b9fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'imu_scaled)))
  "Returns md5sum for a message object of type 'imu_scaled"
  "d3bec1428d9809c2fe2f8b896685b9fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<imu_scaled>)))
  "Returns full string definition for message of type '<imu_scaled>"
  (cl:format cl:nil "int32 tow~%geometry_msgs/Vector3 acc~%geometry_msgs/Vector3 gyr~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'imu_scaled)))
  "Returns full string definition for message of type 'imu_scaled"
  (cl:format cl:nil "int32 tow~%geometry_msgs/Vector3 acc~%geometry_msgs/Vector3 gyr~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <imu_scaled>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'acc))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'gyr))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <imu_scaled>))
  "Converts a ROS message object to a list"
  (cl:list 'imu_scaled
    (cl:cons ':tow (tow msg))
    (cl:cons ':acc (acc msg))
    (cl:cons ':gyr (gyr msg))
))
