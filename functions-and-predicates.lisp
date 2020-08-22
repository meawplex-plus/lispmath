(in-package #:lispmath)

;define our create-p macro and source-p function

(defun source-p (func)
  "Return source code for predicate defining function.
Expects quote function name as an argument."
  (let ((funcname (intern (concatenate 'string (symbol-name `,func) "P"))))
    `(defun ,funcname (args)
       (loop for i from 1
          until (>= (,func i) args)
          finally
            (return (equalp (,func i) args))))))


(defmacro create-p (func docstring argname)
  "Return fully defined predicate function.
Does NOT expect quote function name as an argument.
Rather, expects straight name. (i.e. (create-p fofo).)
Requires docstring as argument."
  (let ((funcname (intern (concatenate 'string (symbol-name `,func) "P"))))
    `(defun ,funcname (,argname)
       ,docstring
       (loop for i from 1
          until (>= (,func i) ,argname)
          finally
            (return (equalp (,func i) ,argname))))))

; main lisp-math functions

(defun fib (n)
  "Take N and return the Nth fibonacci number."
  (cond
    ((<= n 0) (format t "Fibonacci of < 1 is not defined"))
    ((= 1 n) (values 1))
    ((= 2 n) (values 1))
    (t (+ (fib (- n 1)) (fib (- n 2))))))

(defun genfib (list-size)
  "Take LIST-SIZE and return a list of the first LIST-SIZE fibonacci numbers."
  (mapcar #'fib (loop for i from 1 to list-size collect i)))

(defun fact (n)
  "Take N and return N! (N factorial)."
  (cond
    ((< n 0) (format t "Factorial of < 0 is undefined"))
    ((= n 0) (values 1))
    (t (* n (fact (- n 1))))))

(defun perm (n k)
  "Take N and K and return P(N, K). (P(N, K) is the permutations of N and K.)"
  (/ (fact n)
     (fact (- n k))))

(defun comb (n k)
  "Take N and K and return C(N, K). (C(N, K) is the combinations of N and K.)"
  (/ (perm n k)
     (fact k)))

(defun genptrow (n)
  "Take N and return the Nth row of Pascal's Triangle.
The first row is row 0.
Thus, (genptrow 1) evaluates to everything on row 0."
  (loop for i from 0 to (1- n)
     for y = (comb (1- n) i)
     collect y))

(defun genpt (rows)
  "Take ROWS and return the first ROWS rows of Pascal's Triangle."
  (loop for x from 1 to rows
     initially (print (format nil "~130:@<~A~>" "Warning: more than 17 rows looks funky"))
     do (print (format nil "~130:@<~A~>" (genptrow x)))))

(defun catn (n)
  "Take N and return the Nth Catalan number. ((catn 0) evaluates to 0.)"
  (/ (comb (* 2 n) n)
     (1+ n)))

; add predicates for all necessary forms

(create-p catn "Predicate for catn func." n)

(create-p fib "Predicate for fib func." n)

(create-p fact "Predicate for fact func." n)
