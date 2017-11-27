;; Recurive linear process for additon
(define (* a b)
  (if (= b 0)
      0
      (+ a (* a (- b 1)))))

;; Recurive logarithmic process for addition
(define (double n)
  (+ n n))
(define (halve n)
  (/ n 2))

(define (*fastr a b)
  (cond ((= b 0) 0)
        ((even? b) (*fastr (double a) (halve b)))
        (else (+ a (*fastr a (- b 1))))))

  


    
