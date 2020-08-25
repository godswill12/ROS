; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-srv)


;//! \htmlinclude add_two_numbers-request.msg.html

(cl:defclass <add_two_numbers-request> (roslisp-msg-protocol:ros-message)
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

(cl:defclass add_two_numbers-request (<add_two_numbers-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <add_two_numbers-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'add_two_numbers-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<add_two_numbers-request> is deprecated: use beginner_tutorials-srv:add_two_numbers-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <add_two_numbers-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:x-val is deprecated.  Use beginner_tutorials-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <add_two_numbers-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:y-val is deprecated.  Use beginner_tutorials-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <add_two_numbers-request>) ostream)
  "Serializes a message object of type '<add_two_numbers-request>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <add_two_numbers-request>) istream)
  "Deserializes a message object of type '<add_two_numbers-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<add_two_numbers-request>)))
  "Returns string type for a service object of type '<add_two_numbers-request>"
  "beginner_tutorials/add_two_numbersRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_two_numbers-request)))
  "Returns string type for a service object of type 'add_two_numbers-request"
  "beginner_tutorials/add_two_numbersRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<add_two_numbers-request>)))
  "Returns md5sum for a message object of type '<add_two_numbers-request>"
  "875493d2ec8f0bdc18c62960322c94b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'add_two_numbers-request)))
  "Returns md5sum for a message object of type 'add_two_numbers-request"
  "875493d2ec8f0bdc18c62960322c94b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<add_two_numbers-request>)))
  "Returns full string definition for message of type '<add_two_numbers-request>"
  (cl:format cl:nil "~%#request field~%int64 x~%int64 y~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'add_two_numbers-request)))
  "Returns full string definition for message of type 'add_two_numbers-request"
  (cl:format cl:nil "~%#request field~%int64 x~%int64 y~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <add_two_numbers-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <add_two_numbers-request>))
  "Converts a ROS message object to a list"
  (cl:list 'add_two_numbers-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude add_two_numbers-response.msg.html

(cl:defclass <add_two_numbers-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass add_two_numbers-response (<add_two_numbers-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <add_two_numbers-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'add_two_numbers-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-srv:<add_two_numbers-response> is deprecated: use beginner_tutorials-srv:add_two_numbers-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <add_two_numbers-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-srv:sum-val is deprecated.  Use beginner_tutorials-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <add_two_numbers-response>) ostream)
  "Serializes a message object of type '<add_two_numbers-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <add_two_numbers-response>) istream)
  "Deserializes a message object of type '<add_two_numbers-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<add_two_numbers-response>)))
  "Returns string type for a service object of type '<add_two_numbers-response>"
  "beginner_tutorials/add_two_numbersResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_two_numbers-response)))
  "Returns string type for a service object of type 'add_two_numbers-response"
  "beginner_tutorials/add_two_numbersResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<add_two_numbers-response>)))
  "Returns md5sum for a message object of type '<add_two_numbers-response>"
  "875493d2ec8f0bdc18c62960322c94b7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'add_two_numbers-response)))
  "Returns md5sum for a message object of type 'add_two_numbers-response"
  "875493d2ec8f0bdc18c62960322c94b7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<add_two_numbers-response>)))
  "Returns full string definition for message of type '<add_two_numbers-response>"
  (cl:format cl:nil "~%#response field~%~%int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'add_two_numbers-response)))
  "Returns full string definition for message of type 'add_two_numbers-response"
  (cl:format cl:nil "~%#response field~%~%int64 sum~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <add_two_numbers-response>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <add_two_numbers-response>))
  "Converts a ROS message object to a list"
  (cl:list 'add_two_numbers-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'add_two_numbers)))
  'add_two_numbers-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'add_two_numbers)))
  'add_two_numbers-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'add_two_numbers)))
  "Returns string type for a service object of type '<add_two_numbers>"
  "beginner_tutorials/add_two_numbers")