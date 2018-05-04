;; SICP excercise 1.32
;; a.
(define (accumulate combiner null-value term a next b)
  (if (> a b)
      null-value
      (combiner (term a) (accumulate combiner null-value term (next a) next b))))

(define (product term a next b)
  (accumulate-i * 1 term a next b))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(define (factorial n)
  (define (id x) x)
  (define (next x) (+ x 1))
  (product id 1 next n))

;; b
(define (accumulate-i combiner null-value term a next b)
  (define (iter a result)
    (if (> a b) result
        (iter (next a) (combiner (term a) result))))
  (iter a null-value))
    
  
