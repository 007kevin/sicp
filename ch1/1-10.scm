;;TODO

;; The following procedure computes a mathematical function called
;; Ackermann's function.

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

;; What are the values of:

;; 1) (A 1 10) => 1024
;; 2) (A 2 4)  => 65536
;; 3) (A 3 3)  => 65536

;; Consider the following procedures, where A is the procedure defined above:
(define (f n) (A 0 n)) ;; => 2n
(define (g n) (A 1 n)) ;; => 2^n
(define (h n) (A 2 n)) ;; => 2^^n ( Knuth's up arrow notation )
(define (k n) (* 5 n n))
;; Give concise mathematical definitions for the functions computed by the
;; procedures f, g, h for positive interger values of n. For example, (k n) computes
;; 5n^2



