;; Define a procedure that takes as arguments f, a b, n
;; and returns the value of the integral, computed using
;; Simpson's rule.
;;
;; Notes: I think from numerical analysis class, n must be
;;        even for Simpson's rule to work


(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

(define (simpsons-rule f a b n)
  (define (h) (/ (- b a) n))
  (define (next x) (+ x 1))
  (define (term k)
    (*
     (cond ((or (= k 0) (= k n)) 1)
           ((= (remainder k 2) 1) 4)
           (else 2))
     (f (+ a (* k (h))))
     (/ (h) 3)
     )
    )
  (sum term 0 next n))

;; Validation
(define (cube x) (* x x x ))
(define (test1)
  (simpsons-rule cube 0 1 100)) ;; -> 1/4

(define (test2)
  (simpsons-rule cube 0 1 1000)) ;; -> 1/4

  
