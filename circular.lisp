(in-package #:lispmath)

;; Some useful constants, no earmuffs so they are more like pi
(defconstant tau (+ pi pi) "Going back to tau/pi. The literal name.")
(defconstant 2pi tau       "Another way to represent tau. In fact, tau is more often use than pi!")
(defconstant 2π  tau       "And this too, but instead with the symbol for pi.")
(defconstant π   pi        "There's going to be one last symbol...")
(defconstant τ   tau       "This one.")

;;
(defun ellipse-perimeter (a b)
 "Matt Parker's algorithm for estimating the perimeter of an ellipse,
  where perimeter ≈ π[53a/3 + 717b/35 - √(269a^2 + 667ab + 371b^2)]
Implemented by Karsten Johansson (https://github.com/ksaj/ksaj-ellipses)"

  (check-type a number)   ; Keep code safe from injection
  (check-type b number)   ; 

  (if (= a b)
    (princ "Use the circumference function for circles. This result will be inaccurate."))

  (if (< a b)             ; A needs to be the longer axis
    (rotatef a b))

  (* pi (- (+ (* 53  (/ a 3))
              (* 717 (/ b 35)))

           (sqrt (+ (* 269 (* a a))
                    (* 667 a b)
                    (* 371 (* b b)))))))

;;
(defun ellipse-area (a b)
 "Calculate area of an ellipse. Implemented by Karsten Johansson."

  (check-type a number)   ; Keep code safe from injection
  (check-type b number)   ;

  (* pi a b))

;;
(defun circle-area (radius)
 "Calculate area of a circle. Implemented by Karsten Johansson."

  (check-type radius number)

  (* pi radius radius))

;;
(defun circumference (radius)
 "Calculate circumference of a circle. Implemented by Karsten Johansson."

  (check-type radius number)

  (* tau radius))



