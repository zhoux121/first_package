;; Auto-generated. Do not edit!


(when (boundp 'first_package::add_number)
  (if (not (find-package "FIRST_PACKAGE"))
    (make-package "FIRST_PACKAGE"))
  (shadow 'add_number (find-package "FIRST_PACKAGE")))
(unless (find-package "FIRST_PACKAGE::ADD_NUMBER")
  (make-package "FIRST_PACKAGE::ADD_NUMBER"))
(unless (find-package "FIRST_PACKAGE::ADD_NUMBERREQUEST")
  (make-package "FIRST_PACKAGE::ADD_NUMBERREQUEST"))
(unless (find-package "FIRST_PACKAGE::ADD_NUMBERRESPONSE")
  (make-package "FIRST_PACKAGE::ADD_NUMBERRESPONSE"))

(in-package "ROS")





(defclass first_package::add_numberRequest
  :super ros::object
  :slots (_x _y ))

(defmethod first_package::add_numberRequest
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int64 _x
    8
    ;; int64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _x
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _x (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _x) (= (length (_x . bv)) 2)) ;; bignum
              (write-long (ash (elt (_x . bv) 0) 0) s)
              (write-long (ash (elt (_x . bv) 1) -1) s))
             ((and (class _x) (= (length (_x . bv)) 1)) ;; big1
              (write-long (elt (_x . bv) 0) s)
              (write-long (if (>= _x 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _x s)(write-long (if (>= _x 0) 0 #xffffffff) s)))
     ;; int64 _y
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _y (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _y) (= (length (_y . bv)) 2)) ;; bignum
              (write-long (ash (elt (_y . bv) 0) 0) s)
              (write-long (ash (elt (_y . bv) 1) -1) s))
             ((and (class _y) (= (length (_y . bv)) 1)) ;; big1
              (write-long (elt (_y . bv) 0) s)
              (write-long (if (>= _y 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _y s)(write-long (if (>= _y 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _x
#+(or :alpha :irix6 :x86_64)
      (setf _x (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _x (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _y
#+(or :alpha :irix6 :x86_64)
      (setf _y (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _y (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass first_package::add_numberResponse
  :super ros::object
  :slots (_total ))

(defmethod first_package::add_numberResponse
  (:init
   (&key
    ((:total __total) 0)
    )
   (send-super :init)
   (setq _total (round __total))
   self)
  (:total
   (&optional __total)
   (if __total (setq _total __total)) _total)
  (:serialization-length
   ()
   (+
    ;; int64 _total
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int64 _total
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _total (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _total) (= (length (_total . bv)) 2)) ;; bignum
              (write-long (ash (elt (_total . bv) 0) 0) s)
              (write-long (ash (elt (_total . bv) 1) -1) s))
             ((and (class _total) (= (length (_total . bv)) 1)) ;; big1
              (write-long (elt (_total . bv) 0) s)
              (write-long (if (>= _total 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _total s)(write-long (if (>= _total 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int64 _total
#+(or :alpha :irix6 :x86_64)
      (setf _total (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _total (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass first_package::add_number
  :super ros::object
  :slots ())

(setf (get first_package::add_number :md5sum-) "5e878c160de31ef5d59d083a1ce67f56")
(setf (get first_package::add_number :datatype-) "first_package/add_number")
(setf (get first_package::add_number :request) first_package::add_numberRequest)
(setf (get first_package::add_number :response) first_package::add_numberResponse)

(defmethod first_package::add_numberRequest
  (:response () (instance first_package::add_numberResponse :init)))

(setf (get first_package::add_numberRequest :md5sum-) "5e878c160de31ef5d59d083a1ce67f56")
(setf (get first_package::add_numberRequest :datatype-) "first_package/add_numberRequest")
(setf (get first_package::add_numberRequest :definition-)
      "int64 x
int64 y
---
int64 total

")

(setf (get first_package::add_numberResponse :md5sum-) "5e878c160de31ef5d59d083a1ce67f56")
(setf (get first_package::add_numberResponse :datatype-) "first_package/add_numberResponse")
(setf (get first_package::add_numberResponse :definition-)
      "int64 x
int64 y
---
int64 total

")



(provide :first_package/add_number "5e878c160de31ef5d59d083a1ce67f56")


