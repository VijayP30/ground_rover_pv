; Auto-generated. Do not edit!


(cl:in-package swiftnav_driver-msg)


;//! \htmlinclude imu_aux.msg.html

(cl:defclass <imu_aux> (roslisp-msg-protocol:ros-message)
  ((imu_type
    :reader imu_type
    :initarg :imu_type
    :type cl:fixnum
    :initform 0)
   (temp
    :reader temp
    :initarg :temp
    :type cl:fixnum
    :initform 0)
   (imu_conf
    :reader imu_conf
    :initarg :imu_conf
    :type cl:fixnum
    :initform 0))
)

(cl:defclass imu_aux (<imu_aux>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <imu_aux>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'imu_aux)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swiftnav_driver-msg:<imu_aux> is deprecated: use swiftnav_driver-msg:imu_aux instead.")))

(cl:ensure-generic-function 'imu_type-val :lambda-list '(m))
(cl:defmethod imu_type-val ((m <imu_aux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swiftnav_driver-msg:imu_type-val is deprecated.  Use swiftnav_driver-msg:imu_type instead.")
  (imu_type m))

(cl:ensure-generic-function 'temp-val :lambda-list '(m))
(cl:defmethod temp-val ((m <imu_aux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swiftnav_driver-msg:temp-val is deprecated.  Use swiftnav_driver-msg:temp instead.")
  (temp m))

(cl:ensure-generic-function 'imu_conf-val :lambda-list '(m))
(cl:defmethod imu_conf-val ((m <imu_aux>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swiftnav_driver-msg:imu_conf-val is deprecated.  Use swiftnav_driver-msg:imu_conf instead.")
  (imu_conf m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <imu_aux>) ostream)
  "Serializes a message object of type '<imu_aux>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imu_type)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'temp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imu_conf)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <imu_aux>) istream)
  "Deserializes a message object of type '<imu_aux>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imu_type)) (cl:read-byte istream))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temp) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'imu_conf)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<imu_aux>)))
  "Returns string type for a message object of type '<imu_aux>"
  "swiftnav_driver/imu_aux")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'imu_aux)))
  "Returns string type for a message object of type 'imu_aux"
  "swiftnav_driver/imu_aux")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<imu_aux>)))
  "Returns md5sum for a message object of type '<imu_aux>"
  "249814da45ee16df652b831c1a2441a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'imu_aux)))
  "Returns md5sum for a message object of type 'imu_aux"
  "249814da45ee16df652b831c1a2441a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<imu_aux>)))
  "Returns full string definition for message of type '<imu_aux>"
  (cl:format cl:nil "uint8 imu_type~%int16 temp~%uint8 imu_conf~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'imu_aux)))
  "Returns full string definition for message of type 'imu_aux"
  (cl:format cl:nil "uint8 imu_type~%int16 temp~%uint8 imu_conf~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <imu_aux>))
  (cl:+ 0
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <imu_aux>))
  "Converts a ROS message object to a list"
  (cl:list 'imu_aux
    (cl:cons ':imu_type (imu_type msg))
    (cl:cons ':temp (temp msg))
    (cl:cons ':imu_conf (imu_conf msg))
))
