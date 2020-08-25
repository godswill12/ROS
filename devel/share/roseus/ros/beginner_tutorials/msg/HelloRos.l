;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::HelloRos)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'HelloRos (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::HELLOROS")
  (make-package "BEGINNER_TUTORIALS::HELLOROS"))

(in-package "ROS")
;;//! \htmlinclude HelloRos.msg.html


(defclass beginner_tutorials::HelloRos
  :super ros::object
  :slots (_Ros _age _name ))

(defmethod beginner_tutorials::HelloRos
  (:init
   (&key
    ((:Ros __Ros) "")
    ((:age __age) 0)
    ((:name __name) "")
    )
   (send-super :init)
   (setq _Ros (string __Ros))
   (setq _age (round __age))
   (setq _name (string __name))
   self)
  (:Ros
   (&optional __Ros)
   (if __Ros (setq _Ros __Ros)) _Ros)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _Ros
    4 (length _Ros)
    ;; int64 _age
    8
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _Ros
       (write-long (length _Ros) s) (princ _Ros s)
     ;; int64 _age
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _age (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _age) (= (length (_age . bv)) 2)) ;; bignum
              (write-long (ash (elt (_age . bv) 0) 0) s)
              (write-long (ash (elt (_age . bv) 1) -1) s))
             ((and (class _age) (= (length (_age . bv)) 1)) ;; big1
              (write-long (elt (_age . bv) 0) s)
              (write-long (if (>= _age 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _age s)(write-long (if (>= _age 0) 0 #xffffffff) s)))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _Ros
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _Ros (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _age
#+(or :alpha :irix6 :x86_64)
      (setf _age (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _age (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get beginner_tutorials::HelloRos :md5sum-) "a040e6b50aa4df62e27b13e9b8f055f4")
(setf (get beginner_tutorials::HelloRos :datatype-) "beginner_tutorials/HelloRos")
(setf (get beginner_tutorials::HelloRos :definition-)
      "#ROS Mesages
string Ros
int64 age
string name

")



(provide :beginner_tutorials/HelloRos "a040e6b50aa4df62e27b13e9b8f055f4")


