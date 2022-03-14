;; Auto-generated. Do not edit!


(when (boundp 'my_pack::WordCount)
  (if (not (find-package "MY_PACK"))
    (make-package "MY_PACK"))
  (shadow 'WordCount (find-package "MY_PACK")))
(unless (find-package "MY_PACK::WORDCOUNT")
  (make-package "MY_PACK::WORDCOUNT"))
(unless (find-package "MY_PACK::WORDCOUNTREQUEST")
  (make-package "MY_PACK::WORDCOUNTREQUEST"))
(unless (find-package "MY_PACK::WORDCOUNTRESPONSE")
  (make-package "MY_PACK::WORDCOUNTRESPONSE"))

(in-package "ROS")





(defclass my_pack::WordCountRequest
  :super ros::object
  :slots (_words ))

(defmethod my_pack::WordCountRequest
  (:init
   (&key
    ((:words __words) "")
    )
   (send-super :init)
   (setq _words (string __words))
   self)
  (:words
   (&optional __words)
   (if __words (setq _words __words)) _words)
  (:serialization-length
   ()
   (+
    ;; string _words
    4 (length _words)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _words
       (write-long (length _words) s) (princ _words s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _words
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _words (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass my_pack::WordCountResponse
  :super ros::object
  :slots (_count ))

(defmethod my_pack::WordCountResponse
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; uint32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass my_pack::WordCount
  :super ros::object
  :slots ())

(setf (get my_pack::WordCount :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get my_pack::WordCount :datatype-) "my_pack/WordCount")
(setf (get my_pack::WordCount :request) my_pack::WordCountRequest)
(setf (get my_pack::WordCount :response) my_pack::WordCountResponse)

(defmethod my_pack::WordCountRequest
  (:response () (instance my_pack::WordCountResponse :init)))

(setf (get my_pack::WordCountRequest :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get my_pack::WordCountRequest :datatype-) "my_pack/WordCountRequest")
(setf (get my_pack::WordCountRequest :definition-)
      "string words
---
uint32 count

")

(setf (get my_pack::WordCountResponse :md5sum-) "58903d21a3264f3408d79ba79e9f7c7e")
(setf (get my_pack::WordCountResponse :datatype-) "my_pack/WordCountResponse")
(setf (get my_pack::WordCountResponse :definition-)
      "string words
---
uint32 count

")



(provide :my_pack/WordCount "58903d21a3264f3408d79ba79e9f7c7e")


