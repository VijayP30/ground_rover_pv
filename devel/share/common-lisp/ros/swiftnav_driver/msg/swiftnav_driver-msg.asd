
(cl:in-package :asdf)

(defsystem "swiftnav_driver-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "gps_loc" :depends-on ("_package_gps_loc"))
    (:file "_package_gps_loc" :depends-on ("_package"))
    (:file "imu" :depends-on ("_package_imu"))
    (:file "_package_imu" :depends-on ("_package"))
    (:file "imu_aux" :depends-on ("_package_imu_aux"))
    (:file "_package_imu_aux" :depends-on ("_package"))
    (:file "imu_scaled" :depends-on ("_package_imu_scaled"))
    (:file "_package_imu_scaled" :depends-on ("_package"))
    (:file "s16_Vec3" :depends-on ("_package_s16_Vec3"))
    (:file "_package_s16_Vec3" :depends-on ("_package"))
  ))