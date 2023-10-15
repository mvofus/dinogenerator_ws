;; Auto-generated. Do not edit!


(when (boundp 'dinogenerator::GenerateDino)
  (if (not (find-package "DINOGENERATOR"))
    (make-package "DINOGENERATOR"))
  (shadow 'GenerateDino (find-package "DINOGENERATOR")))
(unless (find-package "DINOGENERATOR::GENERATEDINO")
  (make-package "DINOGENERATOR::GENERATEDINO"))
(unless (find-package "DINOGENERATOR::GENERATEDINOREQUEST")
  (make-package "DINOGENERATOR::GENERATEDINOREQUEST"))
(unless (find-package "DINOGENERATOR::GENERATEDINORESPONSE")
  (make-package "DINOGENERATOR::GENERATEDINORESPONSE"))

(in-package "ROS")





(defclass dinogenerator::GenerateDinoRequest
  :super ros::object
  :slots (_input_word ))

(defmethod dinogenerator::GenerateDinoRequest
  (:init
   (&key
    ((:input_word __input_word) "")
    )
   (send-super :init)
   (setq _input_word (string __input_word))
   self)
  (:input_word
   (&optional __input_word)
   (if __input_word (setq _input_word __input_word)) _input_word)
  (:serialization-length
   ()
   (+
    ;; string _input_word
    4 (length _input_word)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _input_word
       (write-long (length _input_word) s) (princ _input_word s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _input_word
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _input_word (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dinogenerator::GenerateDinoResponse
  :super ros::object
  :slots (_output_dino_name ))

(defmethod dinogenerator::GenerateDinoResponse
  (:init
   (&key
    ((:output_dino_name __output_dino_name) "")
    )
   (send-super :init)
   (setq _output_dino_name (string __output_dino_name))
   self)
  (:output_dino_name
   (&optional __output_dino_name)
   (if __output_dino_name (setq _output_dino_name __output_dino_name)) _output_dino_name)
  (:serialization-length
   ()
   (+
    ;; string _output_dino_name
    4 (length _output_dino_name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _output_dino_name
       (write-long (length _output_dino_name) s) (princ _output_dino_name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _output_dino_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _output_dino_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass dinogenerator::GenerateDino
  :super ros::object
  :slots ())

(setf (get dinogenerator::GenerateDino :md5sum-) "05f0b075fa1cdfa5ea65f04d56a877bc")
(setf (get dinogenerator::GenerateDino :datatype-) "dinogenerator/GenerateDino")
(setf (get dinogenerator::GenerateDino :request) dinogenerator::GenerateDinoRequest)
(setf (get dinogenerator::GenerateDino :response) dinogenerator::GenerateDinoResponse)

(defmethod dinogenerator::GenerateDinoRequest
  (:response () (instance dinogenerator::GenerateDinoResponse :init)))

(setf (get dinogenerator::GenerateDinoRequest :md5sum-) "05f0b075fa1cdfa5ea65f04d56a877bc")
(setf (get dinogenerator::GenerateDinoRequest :datatype-) "dinogenerator/GenerateDinoRequest")
(setf (get dinogenerator::GenerateDinoRequest :definition-)
      "string input_word
---
string output_dino_name

")

(setf (get dinogenerator::GenerateDinoResponse :md5sum-) "05f0b075fa1cdfa5ea65f04d56a877bc")
(setf (get dinogenerator::GenerateDinoResponse :datatype-) "dinogenerator/GenerateDinoResponse")
(setf (get dinogenerator::GenerateDinoResponse :definition-)
      "string input_word
---
string output_dino_name

")



(provide :dinogenerator/GenerateDino "05f0b075fa1cdfa5ea65f04d56a877bc")


