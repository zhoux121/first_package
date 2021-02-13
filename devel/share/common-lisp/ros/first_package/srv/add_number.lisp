; Auto-generated. Do not edit!


(cl:in-package first_package-srv)


;//! \htmlinclude add_number-request.msg.html

(cl:defclass <add_number-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:integer
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:integer
    :initform 0))
)

(cl:defclass add_number-request (<add_number-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <add_number-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'add_number-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name first_package-srv:<add_number-request> is deprecated: use first_package-srv:add_number-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <add_number-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first_package-srv:x-val is deprecated.  Use first_package-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <add_number-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first_package-srv:y-val is deprecated.  Use first_package-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <add_number-request>) ostream)
  "Serializes a message object of type '<add_number-request>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <add_number-request>) istream)
  "Deserializes a message object of type '<add_number-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<add_number-request>)))
  "Returns string type for a service object of type '<add_number-request>"
  "first_package/add_numberRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_number-request)))
  "Returns string type for a service object of type 'add_number-request"
  "first_package/add_numberRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<add_number-request>)))
  "Returns md5sum for a message object of type '<add_number-request>"
  "5e878c160de31ef5d59d083a1ce67f56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'add_number-request)))
  "Returns md5sum for a message object of type 'add_number-request"
  "5e878c160de31ef5d59d083a1ce67f56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<add_number-request>)))
  "Returns full string definition for message of type '<add_number-request>"
  (cl:format cl:nil "int64 x~%int64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'add_number-request)))
  "Returns full string definition for message of type 'add_number-request"
  (cl:format cl:nil "int64 x~%int64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <add_number-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <add_number-request>))
  "Converts a ROS message object to a list"
  (cl:list 'add_number-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude add_number-response.msg.html

(cl:defclass <add_number-response> (roslisp-msg-protocol:ros-message)
  ((total
    :reader total
    :initarg :total
    :type cl:integer
    :initform 0))
)

(cl:defclass add_number-response (<add_number-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <add_number-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'add_number-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name first_package-srv:<add_number-response> is deprecated: use first_package-srv:add_number-response instead.")))

(cl:ensure-generic-function 'total-val :lambda-list '(m))
(cl:defmethod total-val ((m <add_number-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader first_package-srv:total-val is deprecated.  Use first_package-srv:total instead.")
  (total m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <add_number-response>) ostream)
  "Serializes a message object of type '<add_number-response>"
  (cl:let* ((signed (cl:slot-value msg 'total)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <add_number-response>) istream)
  "Deserializes a message object of type '<add_number-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'total) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<add_number-response>)))
  "Returns string type for a service object of type '<add_number-response>"
  "first_package/add_numberResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_number-response)))
  "Returns string type for a service object of type 'add_number-response"
  "first_package/add_numberResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<add_number-response>)))
  "Returns md5sum for a message object of type '<add_number-response>"
  "5e878c160de31ef5d59d083a1ce67f56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'add_number-response)))
  "Returns md5sum for a message object of type 'add_number-response"
  "5e878c160de31ef5d59d083a1ce67f56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<add_number-response>)))
  "Returns full string definition for message of type '<add_number-response>"
  (cl:format cl:nil "int64 total~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'add_number-response)))
  "Returns full string definition for message of type 'add_number-response"
  (cl:format cl:nil "int64 total~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <add_number-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <add_number-response>))
  "Converts a ROS message object to a list"
  (cl:list 'add_number-response
    (cl:cons ':total (total msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'add_number)))
  'add_number-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'add_number)))
  'add_number-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_number)))
  "Returns string type for a service object of type '<add_number>"
  "first_package/add_number")