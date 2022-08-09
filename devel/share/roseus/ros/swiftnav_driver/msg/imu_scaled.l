;; Auto-generated. Do not edit!


(when (boundp 'swiftnav_driver::imu_scaled)
  (if (not (find-package "SWIFTNAV_DRIVER"))
    (make-package "SWIFTNAV_DRIVER"))
  (shadow 'imu_scaled (find-package "SWIFTNAV_DRIVER")))
(unless (find-package "SWIFTNAV_DRIVER::IMU_SCALED")
  (make-package "SWIFTNAV_DRIVER::IMU_SCALED"))

(in-package "ROS")
;;//! \htmlinclude imu_scaled.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass swiftnav_driver::imu_scaled
  :super ros::object
  :slots (_tow _acc _gyr ))

(defmethod swiftnav_driver::imu_scaled
  (:init
   (&key
    ((:tow __tow) 0)
    ((:acc __acc) (instance geometry_msgs::Vector3 :init))
    ((:gyr __gyr) (instance geometry_msgs::Vector3 :init))
    )
   (send-super :init)
   (setq _tow (round __tow))
   (setq _acc __acc)
   (setq _gyr __gyr)
   self)
  (:tow
   (&optional __tow)
   (if __tow (setq _tow __tow)) _tow)
  (:acc
   (&rest __acc)
   (if (keywordp (car __acc))
       (send* _acc __acc)
     (progn
       (if __acc (setq _acc (car __acc)))
       _acc)))
  (:gyr
   (&rest __gyr)
   (if (keywordp (car __gyr))
       (send* _gyr __gyr)
     (progn
       (if __gyr (setq _gyr (car __gyr)))
       _gyr)))
  (:serialization-length
   ()
   (+
    ;; int32 _tow
    4
    ;; geometry_msgs/Vector3 _acc
    (send _acc :serialization-length)
    ;; geometry_msgs/Vector3 _gyr
    (send _gyr :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _tow
       (write-long _tow s)
     ;; geometry_msgs/Vector3 _acc
       (send _acc :serialize s)
     ;; geometry_msgs/Vector3 _gyr
       (send _gyr :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _tow
     (setq _tow (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Vector3 _acc
     (send _acc :deserialize buf ptr-) (incf ptr- (send _acc :serialization-length))
   ;; geometry_msgs/Vector3 _gyr
     (send _gyr :deserialize buf ptr-) (incf ptr- (send _gyr :serialization-length))
   ;;
   self)
  )

(setf (get swiftnav_driver::imu_scaled :md5sum-) "d3bec1428d9809c2fe2f8b896685b9fc")
(setf (get swiftnav_driver::imu_scaled :datatype-) "swiftnav_driver/imu_scaled")
(setf (get swiftnav_driver::imu_scaled :definition-)
      "int32 tow
geometry_msgs/Vector3 acc
geometry_msgs/Vector3 gyr
================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :swiftnav_driver/imu_scaled "d3bec1428d9809c2fe2f8b896685b9fc")


