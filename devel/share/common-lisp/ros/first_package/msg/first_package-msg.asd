
(cl:in-package :asdf)

(defsystem "first_package-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "IoTSensor1" :depends-on ("_package_IoTSensor1"))
    (:file "_package_IoTSensor1" :depends-on ("_package"))
  ))