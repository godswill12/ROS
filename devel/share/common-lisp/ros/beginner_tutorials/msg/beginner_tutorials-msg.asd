
(cl:in-package :asdf)

(defsystem "beginner_tutorials-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "HelloRos" :depends-on ("_package_HelloRos"))
    (:file "_package_HelloRos" :depends-on ("_package"))
    (:file "ultrasonic_reading" :depends-on ("_package_ultrasonic_reading"))
    (:file "_package_ultrasonic_reading" :depends-on ("_package"))
  ))