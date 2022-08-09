; Auto-generated. Do not edit!


(cl:in-package swiftnav_driver-msg)


;//! \htmlinclude s16_Vec3.msg.html

(cl:defclass <s16_Vec3> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:fixnum
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:fixnum
    :initform 0)
   (z
    :reader z
    :initarg :z
    :type cl:fixnum
    :initform 0))
)

(cl:defclass s16_Vec3 (<s16_Vec3>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <s16_Vec3>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 's16_Vec3)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swiftnav_driver-msg:<s16_Vec3> is deprecated: use swiftnav_driver-msg:s16_Vec3 instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <s16_Vec3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swiftnav_driver-msg:x-val is deprecated.  Use swiftnav_driver-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <s16_Vec3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swiftnav_driver-msg:y-val is deprecated.  Use swiftnav_driver-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <s16_Vec3>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swiftnav_driver-msg:z-val is deprecated.  Use swiftnav_driver-msg:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <s16_Vec3>) ostream)
  "Serializes a message object of type '<s16_Vec3>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <s16_Vec3>) istream)
  "Deserializes a message object of type '<s16_Vec3>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'z) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<s16_Vec3>)))
  "Returns string type for a message object of type '<s16_Vec3>"
  "swiftnav_driver/s16_Vec3")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 's16_Vec3)))
  "Returns string type for a message object of type 's16_Vec3"
  "swiftnav_driver/s16_Vec3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<s16_Vec3>)))
  "Returns md5sum for a message object of type '<s16_Vec3>"
  "85729383565f7e059d4a213b3db1317b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 's16_Vec3)))
  "Returns md5sum for a message object of type 's16_Vec3"
  "85729383565f7e059d4a213b3db1317b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<s16_Vec3>)))
  "Returns full string definition for message of type '<s16_Vec3>"
  (cl:format cl:nil "int16 x~%int16 y~%int16 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 's16_Vec3)))
  "Returns full string definition for message of type 's16_Vec3"
  (cl:format cl:nil "int16 x~%int16 y~%int16 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <s16_Vec3>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <s16_Vec3>))
  "Converts a ROS message object to a list"
  (cl:list 's16_Vec3
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
