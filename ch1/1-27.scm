(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder
          (square (expmod base (/ exp 2) m))
          m))
        (else
         (remainder
          (* base (expmod base (- exp 1) m))
          m))))
(define (fooled-by-carmichael-number n)
  (define (fermat-test a)
    (cond ((= a 0) true)
          ((= (expmod a n n) a) (fermat-test (- a 1)))
          (else false)))
  (fermat-test (- n 1)))
