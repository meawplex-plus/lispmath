(in-package #:cl-user)
(defpackage #:lispmath
  (:nicknames "GitHub at https://github.com/mohindertalafuse/lispmath")
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
   #:fact
   #:factp
   #:perm
   #:comb
   #:genptrow
   #:genpt
   #:catn
   #:catnp))
