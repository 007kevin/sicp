;; Turn the linear recurive process generation sum procedure into
;; an iterative one

;; linear recursive process procedure
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b))))

;; iterative process procedure
(define (sum-i term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (+ result (term a)))))
  (iter a 0))

;; validate
(define (cube x) (* x x x))
(define (inc x) (+ x 1))
(define (test1-r) (sum cube 1 inc 10))
(define (test1-i) (sum-i cube 1 inc 10))
