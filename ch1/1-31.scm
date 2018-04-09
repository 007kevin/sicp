;; PART A
;; Write an analogous procedure called product that
;; returns the product of the values of a function
;; at points over a given range. Show how to define factorial
;; in terms of product. Also use product to compute approximations
;; to pi applying the formula:

;; pi/4 = (* 2 4 4 6 6 8) / (* 3 3 5 5 7 7)

(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (sum term (next a) next b))))

(define (product-i term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* result (term a)))))
  (iter a 1))


(define (square x) (* x x))

(define (approx-pi)
  (define (next x) (+ x 1))
  (define (numerator x) (square (* x 2)))
  (define (denominator x) (square (- (* x 2) 1)))
  (exact->inexact
   (/
    (* 8 (product numerator 2 next 98))
    (product denominator 2 next 100)))
  )


