;; Auto-generated. Do not edit!


(when (boundp 'swiftnav_driver::gps_loc)
  (if (not (find-package "SWIFTNAV_DRIVER"))
    (make-package "SWIFTNAV_DRIVER"))
  (shadow 'gps_loc (find-package "SWIFTNAV_DRIVER")))
(unless (find-package "SWIFTNAV_DRIVER::GPS_LOC")
  (make-package "SWIFTNAV_DRIVER::GPS_LOC"))

(in-package "ROS")
;;//! \htmlinclude gps_loc.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass swiftnav_driver::gps_loc
  :super ros::object
  :slots (_tow _loc ))

(defmethod swiftnav_driver::gps_loc
  (:init
   (&key
    ((:tow __tow) 0)
    ((:loc __loc) (instance geometry_msgs::Point :init))
    )
   (send-super :init)
   (setq _tow (round __tow))
   (setq _loc __loc)
   self)
  (:tow
   (&optional __tow)
   (if __tow (setq _tow __tow)) _tow)
  (:loc
   (&rest __loc)
   (if (keywordp (car __loc))
       (send* _loc __loc)
     (progn
       (if __loc (setq _loc (car __loc)))
       _loc)))
  (:serialization-length
   ()
   (+
    ;; int32 _tow
    4
    ;; geometry_msgs/Point _loc
    (send _loc :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _tow
       (write-long _tow s)
     ;; geometry_msgs/Point _loc
       (send _loc :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _tow
     (setq _tow (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Point _loc
     (send _loc :deserialize buf ptr-) (incf ptr- (send _loc :serialization-length))
   ;;
   self)
  )

(setf (get swiftnav_driver::gps_loc :md5sum-) "be07eed9e736cdda9531572e561caca9")
(setf (get swiftnav_driver::gps_loc :datatype-) "swiftnav_driver/gps_loc")
(setf (get swiftnav_driver::gps_loc :definition-)
      "int32 tow
geometry_msgs/Point loc
================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :swiftnav_driver/gps_loc "be07eed9e736cdda9531572e561caca9")


