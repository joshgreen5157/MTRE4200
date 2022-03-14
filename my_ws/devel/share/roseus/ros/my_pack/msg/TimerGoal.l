;; Auto-generated. Do not edit!


(when (boundp 'my_pack::TimerGoal)
  (if (not (find-package "MY_PACK"))
    (make-package "MY_PACK"))
  (shadow 'TimerGoal (find-package "MY_PACK")))
(unless (find-package "MY_PACK::TIMERGOAL")
  (make-package "MY_PACK::TIMERGOAL"))

(in-package "ROS")
;;//! \htmlinclude TimerGoal.msg.html


(defclass my_pack::TimerGoal
  :super ros::object
  :slots (_time_to_wait ))

(defmethod my_pack::TimerGoal
  (:init
   (&key
    ((:time_to_wait __time_to_wait) (instance ros::time :init))
    )
   (send-super :init)
   (setq _time_to_wait __time_to_wait)
   self)
  (:time_to_wait
   (&optional __time_to_wait)
   (if __time_to_wait (setq _time_to_wait __time_to_wait)) _time_to_wait)
  (:serialization-length
   ()
   (+
    ;; duration _time_to_wait
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; duration _time_to_wait
       (write-long (send _time_to_wait :sec) s) (write-long (send _time_to_wait :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; duration _time_to_wait
     (send _time_to_wait :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _time_to_wait :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get my_pack::TimerGoal :md5sum-) "861563d4afc38bffed1a53c61a474261")
(setf (get my_pack::TimerGoal :datatype-) "my_pack/TimerGoal")
(setf (get my_pack::TimerGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# This is an action definition file, which has three parts: the goal, the
# result, and the feedback.
#
# Part 1: the goal, to be sent by the client
#
# The amount of time we want to wait
duration time_to_wait

")



(provide :my_pack/TimerGoal "861563d4afc38bffed1a53c61a474261")

