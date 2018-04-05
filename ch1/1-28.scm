(define (miller-rabin-test n)
  (define (expmod base exp m)
    (cond ((= exp 0) (if (and ;; check for carmichael number hete
                          (not (or (= base 1) (= base (- n 1))))
                          (= (remainder (square base) n) 1))
                         0 1))
          ((even? exp)
           (remainder
            (square (expmod base (/ exp 2) m))
            m))
          (else
           (remainder
            (* base (expmod base (- exp 1) m))
            m))))
  (define (alt-fermat-test a)
    (cond ((= a 0) true)
          ((= (expmod a (- n 1) n) 1) (alt-fermat-test (- a 1)))
          (else false)))
  (if (= (remainder n 2) 0) false (alt-fermat-test (- n 1))))

