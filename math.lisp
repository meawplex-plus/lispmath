(defmacro create-p (func)
  (let ((funcname (intern (concatenate 'string (symbol-name func) "P"))))
    `(defun ,funcname (number)
       (loop for i from 1
          until (>= (,func i) number)
          finally
            (return (equalp (,func i) number))))))

(defun fib (n)
  (cond
    ((<= n 0) (format t "Fibonacci of < 1 is not defined"))
    ((= 1 n) (values 1))
    ((= 2 n) (values 1))
    (t (+ (fib (- n 1)) (fib (- n 2))))))

(defun genfib (list-size)
  (mapcar #'fib (loop for i from 1 to list-size collect i)))

(defun fib? (number)
  (loop for i from 1
     until (>= (fib i) number)
     finally
     (if (= (fib i) number)
         (format t "Yes! ")
         (format t "No! "))))

(defun fact (n)
  (cond
    ((< n 0) (format t "Factorial of < 0 is undefined"))
    ((= n 0) (values 1))
    (t (* n (fact (- n 1))))))

(defun perm (n k)
  (/ (fact n)
     (fact (- n k))))

(defun comb (n k)
  (/ (perm n k)
     (fact k)))

(defun genptrow (n)
  (loop for i from 0 to (1- n)
     for y = (comb (1- n) i)
     collect y))

(defun genpt (rows)
  (loop for x from 1 to rows
     initially (print (format nil "~130:@<~A~>" "Warning: more than 17 rows looks funky"))
     do (print (format nil "~130:@<~A~>" (genptrow x)))))

(defun catn (n)
  (/ (comb (* 2 n) n)
     (1+ n)))

(defun fibp (number)
  (loop for i from 1
     until (>= (fib i) number)
     finally
       (return (equalp (fib i) number))))
