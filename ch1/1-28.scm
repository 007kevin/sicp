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

(define (miller-rabin-test n)
  (define (alt-fermat-test a)
    (cond ((= a 0) true)
          ((= (expmod a (- n 1) n) 1) (alt-fermat-test (- a 1)))
          (else false)))
  (if (= (remainder n 2) 0) false (alt-fermat-test (- n 1))))

