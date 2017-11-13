(define (pascal r c)
  (cond ((< r c) 0)
        ((or (= r 1) (= c 1)) 1)
        (else (+ (pascal (- r 1) (- c 1)) (pascal (- r 1) c)))))

;; nicer solution found online. Notice one predicate of if statement
;; encapsulates the edge cases. Wish I though of this one myself...
(define (pascal1 r c) 
  (if (or (= c 1) (= c r)) 
      1 
      (+ (pascal (- r 1) (- c 1)) (pascal (- r 1) c)))) 
