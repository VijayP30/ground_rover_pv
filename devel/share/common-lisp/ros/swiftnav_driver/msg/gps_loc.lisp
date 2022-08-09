; Auto-generated. Do not edit!


(cl:in-package swiftnav_driver-msg)


;//! \htmlinclude gps_loc.msg.html

(cl:defclass <gps_loc> (roslisp-msg-protocol:ros-message)
  ((tow
    :reader tow
    :initarg :tow
    :type cl:integer
    :initform 0)
   (loc
    :reader loc
    :initarg :loc
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point)))
)

(cl:defclass gps_loc (<gps_loc>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <gps_loc>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'gps_loc)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name swiftnav_driver-msg:<gps_loc> is deprecated: use swiftnav_driver-msg:gps_loc instead.")))

(cl:ensure-generic-function 'tow-val :lambda-list '(m))
(cl:defmethod tow-val ((m <gps_loc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swiftnav_driver-msg:tow-val is deprecated.  Use swiftnav_driver-msg:tow instead.")
  (tow m))

(cl:ensure-generic-function 'loc-val :lambda-list '(m))
(cl:defmethod loc-val ((m <gps_loc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader swiftnav_driver-msg:loc-val is deprecated.  Use swiftnav_driver-msg:loc instead.")
  (loc m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <gps_loc>) ostream)
  "Serializes a message object of type '<gps_loc>"
  (cl:let* ((signed (cl:slot-value msg 'tow)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'loc) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <gps_loc>) istream)
  "Deserializes a message object of type '<gps_loc>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'tow) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'loc) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<gps_loc>)))
  "Returns string type for a message object of type '<gps_loc>"
  "swiftnav_driver/gps_loc")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'gps_loc)))
  "Returns string type for a message object of type 'gps_loc"
  "swiftnav_driver/gps_loc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<gps_loc>)))
  "Returns md5sum for a message object of type '<gps_loc>"
  "be07eed9e736cdda9531572e561caca9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'gps_loc)))
  "Returns md5sum for a message object of type 'gps_loc"
  "be07eed9e736cdda9531572e561caca9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<gps_loc>)))
  "Returns full string definition for message of type '<gps_loc>"
  (cl:format cl:nil "int32 tow~%geometry_msgs/Point loc~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'gps_loc)))
  "Returns full string definition for message of type 'gps_loc"
  (cl:format cl:nil "int32 tow~%geometry_msgs/Point loc~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <gps_loc>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'loc))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <gps_loc>))
  "Converts a ROS message object to a list"
  (cl:list 'gps_loc
    (cl:cons ':tow (tow msg))
    (cl:cons ':loc (loc msg))
))
