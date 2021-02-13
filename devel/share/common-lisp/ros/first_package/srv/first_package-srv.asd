
(cl:in-package :asdf)

(defsystem "first_package-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "add_number" :depends-on ("_package_add_number"))
    (:file "_package_add_number" :depends-on ("_package"))
  ))