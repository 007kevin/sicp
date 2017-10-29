;; Recursive process
(define (fr n)
  (if (< n 3)
      n
      (+ (+ (* 1 (fr (- n 1))) (* 2 (fr (- n 2))))
         (* 3 (fr (- n 3))))))

;; Iterative process
(define (fi n)


         

         
      
