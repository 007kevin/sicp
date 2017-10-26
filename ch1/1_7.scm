;; With original sqrt method:
;; (sqrt 0.0000000000000000001) => 0.03125 (ans: 3.1622777e-10 )
;; (sqrt 123456789123456789123456789123) => Takes forever

;; Improve by taking the difference (step) between current and
;; previous guess

(define (sqrt-iter prev guess x)
  (if (good-enough? prev guess)
      guess
      (sqrt-iter guess (improve guess x) x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? prev guess)
  (< (abs (- prev guess)) 0.00000000001))

(define (sqrt x)
  (sqrt-iter 0 1.0 x)) ;; Always guess square root of any number is 1
