
(cl:in-package :asdf)

(defsystem "rr_openrover_driver_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "RawRrOpenroverDriverFastRateData" :depends-on ("_package_RawRrOpenroverDriverFastRateData"))
    (:file "_package_RawRrOpenroverDriverFastRateData" :depends-on ("_package"))
    (:file "RawRrOpenroverDriverMedRateData" :depends-on ("_package_RawRrOpenroverDriverMedRateData"))
    (:file "_package_RawRrOpenroverDriverMedRateData" :depends-on ("_package"))
    (:file "RawRrOpenroverDriverSlowRateData" :depends-on ("_package_RawRrOpenroverDriverSlowRateData"))
    (:file "_package_RawRrOpenroverDriverSlowRateData" :depends-on ("_package"))
    (:file "SmartBatteryStatus" :depends-on ("_package_SmartBatteryStatus"))
    (:file "_package_SmartBatteryStatus" :depends-on ("_package"))
  ))