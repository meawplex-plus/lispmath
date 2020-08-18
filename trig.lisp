(defun hypot (leg1 leg2)
  "Calculate hypotenuse length of two legs."
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
