(define (square x) (* x x))
(define (sumsquare x y) (+ (square x) (square y)))
(define (larger x y) (if (> x y) x y))
(define (maxsumsquare x y z)
  (if (= x (larger x y))
      (sumsquare x (larger y z))
      (sumsquare y (larger x z))))
  
