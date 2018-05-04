;; PART A
;; Write an analogous procedure called product that
;; returns the product of the values of a function
;; at points over a given range. Show how to define factorial
;; in terms of product. Also use product to compute approximations
;; to pi applying the formula:

;; pi/4 = (* 2 4 4 6 6 8) / (* 3 3 5 5 7 7)

;; linear recursive process procedure
(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

;; factorial
(define (factorial n)
  (define (next x) (+ x 1))
  (define (id x) x)
  (product id 1 next n))

;; linear iterative process procedure
(define (product-i term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))

(define (square x) (* x x))

(define (pi)
  (define (next x) (+ x 1))
  (define (term x) (if (= (remainder x 2) 0) (/ x (+ x 1)) (/ (+ x 1) x)))
  (* 4.0 (product-i term 2.0 next 1000000)))



