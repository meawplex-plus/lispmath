(in-package #:cl-user)
(defpackage #:lispmath
  (:nicknames "*No nicknames*")
  (:documentation "Handy math tools for Common Lisp.")
  (:use #:cl)
  (:export
   #:sin-degrees
   #:cos-degrees
   #:tan-degrees
   #:cotan-degrees
   #:cosec-degrees
   #:sec-degrees
   #:sec
   #:cotan
   #:cosec
   #:hypot
   #:fib
   #:genfib
   #:fibp
   #:source-p
   #:create-p
   #:genfib
   #:factorial
   #:factorialp
   #:perm
   #:comb
   #:genptrow
   #:genpt
   #:catn
   #:catnp
   #:tau
   #:τ
   #:2π
   #:2pi
   #:π
   #:ellipse-perimeter
   #:ellipse-area
   #:circle-area
   #:circumference
   #:+sin-degrees-identity+
   #:+cos-degrees-identity+
   #:+tan-degrees-identity+
   #:+sec-degrees-identity+
   #:+cot-degrees-identity+
   #:+csc-degrees-identity+))
