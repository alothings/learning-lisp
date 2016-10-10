;;;; This is my first Lisp program. Guess a number.

; Creating a global variable with "defparameter" function
(defparameter *small* 1)
(defparameter *big* 100)
; defparameter vs defvar = values can be overwritten, cannot overwrite.
(defun guess-my-number ()
  (ash (+ *small* *big*) -1))
  ; ash: looks at a number in binary form, and shifts binary bits to left or right.
  ; to left using 1, to right using -1. Resulting in number, halved, rounded down.

(defun smaller ()
  (setf *big* (1- (guess-my-number)))
  (guess-my-number))

(defun bigger ()
  (setf *small* (1+ (guess-my-number)))
  (guess-my-number))

(defun start-over ()
  (defparameter *small* 1)
  (defparameter *big* 100)
  (guess-my-number))
