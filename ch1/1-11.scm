;; Recursive process
(define (fr n)
  (if (< n 3)
      n
      (+ (+ (* 1 (fr (- n 1))) (* 2 (fr (- n 2))))
         (* 3 (fr (- n 3))))))

;; Iterative process
(define (fi n)
  (define (iter i a b c)
    (cond ((= i 0) a)
          ((< i 0) i)
          (else (iter (- i 1) b c (+ c (* 2 b) (* 3 a))))))
  (iter n 0 1 2))
         
         
    



      


         

         
      
