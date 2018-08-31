;; Auto-generated. Do not edit!


(when (boundp 'nxt_msgs::JointCommand)
  (if (not (find-package "NXT_MSGS"))
    (make-package "NXT_MSGS"))
  (shadow 'JointCommand (find-package "NXT_MSGS")))
(unless (find-package "NXT_MSGS::JOINTCOMMAND")
  (make-package "NXT_MSGS::JOINTCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude JointCommand.msg.html


(defclass nxt_msgs::JointCommand
  :super ros::object
  :slots (_name _effort ))

(defmethod nxt_msgs::JointCommand
  (:init
   (&key
    ((:name __name) "")
    ((:effort __effort) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _effort (float __effort))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:effort
   (&optional __effort)
   (if __effort (setq _effort __effort)) _effort)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; float64 _effort
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; float64 _effort
       (sys::poke _effort (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _effort
     (setq _effort (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get nxt_msgs::JointCommand :md5sum-) "9de38d5a93df00cd9489becfca3e874a")
(setf (get nxt_msgs::JointCommand :datatype-) "nxt_msgs/JointCommand")
(setf (get nxt_msgs::JointCommand :definition-)
      "string name
float64 effort

")



(provide :nxt_msgs/JointCommand "9de38d5a93df00cd9489becfca3e874a")


