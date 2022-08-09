;; Auto-generated. Do not edit!


(when (boundp 'swiftnav_driver::imu)
  (if (not (find-package "SWIFTNAV_DRIVER"))
    (make-package "SWIFTNAV_DRIVER"))
  (shadow 'imu (find-package "SWIFTNAV_DRIVER")))
(unless (find-package "SWIFTNAV_DRIVER::IMU")
  (make-package "SWIFTNAV_DRIVER::IMU"))

(in-package "ROS")
;;//! \htmlinclude imu.msg.html


(defclass swiftnav_driver::imu
  :super ros::object
  :slots (_tow _acc _gyr ))

(defmethod swiftnav_driver::imu
  (:init
   (&key
    ((:tow __tow) 0)
    ((:acc __acc) (instance swiftnav_driver::s16_Vec3 :init))
    ((:gyr __gyr) (instance swiftnav_driver::s16_Vec3 :init))
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
    ;; swiftnav_driver/s16_Vec3 _acc
    (send _acc :serialization-length)
    ;; swiftnav_driver/s16_Vec3 _gyr
    (send _gyr :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _tow
       (write-long _tow s)
     ;; swiftnav_driver/s16_Vec3 _acc
       (send _acc :serialize s)
     ;; swiftnav_driver/s16_Vec3 _gyr
       (send _gyr :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _tow
     (setq _tow (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; swiftnav_driver/s16_Vec3 _acc
     (send _acc :deserialize buf ptr-) (incf ptr- (send _acc :serialization-length))
   ;; swiftnav_driver/s16_Vec3 _gyr
     (send _gyr :deserialize buf ptr-) (incf ptr- (send _gyr :serialization-length))
   ;;
   self)
  )

(setf (get swiftnav_driver::imu :md5sum-) "b2387b2ae5c3f1cac7484571dd69baad")
(setf (get swiftnav_driver::imu :datatype-) "swiftnav_driver/imu")
(setf (get swiftnav_driver::imu :definition-)
      "int32 tow
s16_Vec3 acc
s16_Vec3 gyr
================================================================================
MSG: swiftnav_driver/s16_Vec3
int16 x
int16 y
int16 z
")



(provide :swiftnav_driver/imu "b2387b2ae5c3f1cac7484571dd69baad")


