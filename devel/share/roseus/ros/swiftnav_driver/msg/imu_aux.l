;; Auto-generated. Do not edit!


(when (boundp 'swiftnav_driver::imu_aux)
  (if (not (find-package "SWIFTNAV_DRIVER"))
    (make-package "SWIFTNAV_DRIVER"))
  (shadow 'imu_aux (find-package "SWIFTNAV_DRIVER")))
(unless (find-package "SWIFTNAV_DRIVER::IMU_AUX")
  (make-package "SWIFTNAV_DRIVER::IMU_AUX"))

(in-package "ROS")
;;//! \htmlinclude imu_aux.msg.html


(defclass swiftnav_driver::imu_aux
  :super ros::object
  :slots (_imu_type _temp _imu_conf ))

(defmethod swiftnav_driver::imu_aux
  (:init
   (&key
    ((:imu_type __imu_type) 0)
    ((:temp __temp) 0)
    ((:imu_conf __imu_conf) 0)
    )
   (send-super :init)
   (setq _imu_type (round __imu_type))
   (setq _temp (round __temp))
   (setq _imu_conf (round __imu_conf))
   self)
  (:imu_type
   (&optional __imu_type)
   (if __imu_type (setq _imu_type __imu_type)) _imu_type)
  (:temp
   (&optional __temp)
   (if __temp (setq _temp __temp)) _temp)
  (:imu_conf
   (&optional __imu_conf)
   (if __imu_conf (setq _imu_conf __imu_conf)) _imu_conf)
  (:serialization-length
   ()
   (+
    ;; uint8 _imu_type
    1
    ;; int16 _temp
    2
    ;; uint8 _imu_conf
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _imu_type
       (write-byte _imu_type s)
     ;; int16 _temp
       (write-word _temp s)
     ;; uint8 _imu_conf
       (write-byte _imu_conf s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _imu_type
     (setq _imu_type (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; int16 _temp
     (setq _temp (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _imu_conf
     (setq _imu_conf (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get swiftnav_driver::imu_aux :md5sum-) "249814da45ee16df652b831c1a2441a0")
(setf (get swiftnav_driver::imu_aux :datatype-) "swiftnav_driver/imu_aux")
(setf (get swiftnav_driver::imu_aux :definition-)
      "uint8 imu_type
int16 temp
uint8 imu_conf
")



(provide :swiftnav_driver/imu_aux "249814da45ee16df652b831c1a2441a0")


