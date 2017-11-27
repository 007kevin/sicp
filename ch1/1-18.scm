;; Recurive process for additon
(define (* a b)
  (if (= b 0)
      0
      (+ a (* a (- b 1)))))

;; Iterative process for multiplication
(define (double n)
  (+ n n))
(define (halve n)
  (/ n 2))

(define (*i a b)
  (define (* i a b) ;; i -> invariant quantity
    (cond ((= b 0) i)
          ((even? b) (* i (double a) (halve b)))
          (else (* (+ i a) (double a) (halve (- b 1))))))
  (* 0 a b))
    
