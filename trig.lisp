(in-package #:lispmath)


(defparameter *sin-degrees-identity* 90)
(defparameter *cos-degrees-identity* 360)
(defparameter *tan-degrees-identity* 45)
(defparameter *sec-degrees-identity* 0)
(defparameter *cot-degrees-identity* 45)
(defparameter *csc-degrees-identity* 90)

(defun hypot (leg1 leg2)
  "Calculate hypotenuse length of triangle made by two legs."
  (sqrt (+ (* leg1 leg1) (* leg2 leg2))))

(defun sin-degrees (degrees)
  "Calculate the ratio of the opposite to the hypotenuse leg of the angle chosen.
Returns number of type double-float; in other words, (sin-degrees 90) -> 1.0d0."
  (sin (* (/ pi 180) degrees)))

(defun cos-degrees (degrees)
  "Calculate the ratio of the adjacent to the hypotenuse leg of the angle chosen.
Returns number of type double-float; in other words, (cos-degrees 360) -> 1.0d0."
  (cos (* (/ pi 180) degrees)))

(defun tan-degrees (degrees)
  "Calculate the ratio of the opposite to the adjacent leg of the angle chosen.
Returns number of type double-float; in other words, (tan-degrees 45) -> 1.0d0."
  (tan (* (/ pi 180) degrees)))

(defun sec-degrees (degrees)
  "Calulate the secant (colloquially the 'co-cosine') of an angle, which is 1/cos(angle). 
Returns number of type double float; in other words, (sec-degrees 0) -> 1.0d0."
  (/ 1 (cos-degrees degrees)))

(defun cot-degrees (degrees)
  "Calculate the cotangent of an angle, which is 1/tan(angle).
Returns number of type double float; in other words, (cot-degrees 45) -> 1.0d0."
  (/ 1 (tan-degrees degrees)))

(defun csc-degrees (degrees)
  "Calculate the cosecant of an angle, which is 1/sin(angle).
Returns number of type double float; in other words, (csc-degrees 90) -> 1.0d0."
  (/ 1 (sin-degrees degrees)))
