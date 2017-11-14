;; Design a procedure that evolves an iterative exponentiation process that uses successive
;; squaring.
;; Note: b^n = (b^(n/2))^2 if n is even
;;       b^n = b(b^(n-1))  if n is odd

;; recursive process
(define (fast-expt-rec b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt-rec b (/ n 2))))
        (else (* b (fast-expt-rec b (- n 1))))))

;; iterative process
(define (fast-expt-iter b n)
  (define (fast-expt p n)
    (cond ((= n 0) 1)
          ((= n 1) p)
          ((even? n) (fast-expt (* p p) (/ n 2)))
          (else (fast-expt (* p b) (- n 1)))))
  (fast-expt b n))
        
