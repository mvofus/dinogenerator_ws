; Auto-generated. Do not edit!


(cl:in-package dinogenerator-srv)


;//! \htmlinclude GenerateDino-request.msg.html

(cl:defclass <GenerateDino-request> (roslisp-msg-protocol:ros-message)
  ((input_word
    :reader input_word
    :initarg :input_word
    :type cl:string
    :initform ""))
)

(cl:defclass GenerateDino-request (<GenerateDino-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateDino-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateDino-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dinogenerator-srv:<GenerateDino-request> is deprecated: use dinogenerator-srv:GenerateDino-request instead.")))

(cl:ensure-generic-function 'input_word-val :lambda-list '(m))
(cl:defmethod input_word-val ((m <GenerateDino-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dinogenerator-srv:input_word-val is deprecated.  Use dinogenerator-srv:input_word instead.")
  (input_word m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateDino-request>) ostream)
  "Serializes a message object of type '<GenerateDino-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'input_word))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'input_word))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateDino-request>) istream)
  "Deserializes a message object of type '<GenerateDino-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input_word) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'input_word) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateDino-request>)))
  "Returns string type for a service object of type '<GenerateDino-request>"
  "dinogenerator/GenerateDinoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateDino-request)))
  "Returns string type for a service object of type 'GenerateDino-request"
  "dinogenerator/GenerateDinoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateDino-request>)))
  "Returns md5sum for a message object of type '<GenerateDino-request>"
  "05f0b075fa1cdfa5ea65f04d56a877bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateDino-request)))
  "Returns md5sum for a message object of type 'GenerateDino-request"
  "05f0b075fa1cdfa5ea65f04d56a877bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateDino-request>)))
  "Returns full string definition for message of type '<GenerateDino-request>"
  (cl:format cl:nil "string input_word~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateDino-request)))
  "Returns full string definition for message of type 'GenerateDino-request"
  (cl:format cl:nil "string input_word~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateDino-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'input_word))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateDino-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateDino-request
    (cl:cons ':input_word (input_word msg))
))
;//! \htmlinclude GenerateDino-response.msg.html

(cl:defclass <GenerateDino-response> (roslisp-msg-protocol:ros-message)
  ((output_dino_name
    :reader output_dino_name
    :initarg :output_dino_name
    :type cl:string
    :initform ""))
)

(cl:defclass GenerateDino-response (<GenerateDino-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateDino-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateDino-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name dinogenerator-srv:<GenerateDino-response> is deprecated: use dinogenerator-srv:GenerateDino-response instead.")))

(cl:ensure-generic-function 'output_dino_name-val :lambda-list '(m))
(cl:defmethod output_dino_name-val ((m <GenerateDino-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader dinogenerator-srv:output_dino_name-val is deprecated.  Use dinogenerator-srv:output_dino_name instead.")
  (output_dino_name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateDino-response>) ostream)
  "Serializes a message object of type '<GenerateDino-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'output_dino_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'output_dino_name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateDino-response>) istream)
  "Deserializes a message object of type '<GenerateDino-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'output_dino_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'output_dino_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateDino-response>)))
  "Returns string type for a service object of type '<GenerateDino-response>"
  "dinogenerator/GenerateDinoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateDino-response)))
  "Returns string type for a service object of type 'GenerateDino-response"
  "dinogenerator/GenerateDinoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateDino-response>)))
  "Returns md5sum for a message object of type '<GenerateDino-response>"
  "05f0b075fa1cdfa5ea65f04d56a877bc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateDino-response)))
  "Returns md5sum for a message object of type 'GenerateDino-response"
  "05f0b075fa1cdfa5ea65f04d56a877bc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateDino-response>)))
  "Returns full string definition for message of type '<GenerateDino-response>"
  (cl:format cl:nil "string output_dino_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateDino-response)))
  "Returns full string definition for message of type 'GenerateDino-response"
  (cl:format cl:nil "string output_dino_name~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateDino-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'output_dino_name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateDino-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateDino-response
    (cl:cons ':output_dino_name (output_dino_name msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GenerateDino)))
  'GenerateDino-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GenerateDino)))
  'GenerateDino-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateDino)))
  "Returns string type for a service object of type '<GenerateDino>"
  "dinogenerator/GenerateDino")