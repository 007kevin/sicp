(define (smallest-divisor n) (find-divisor n 2))
(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (next test-divisor )))))
(define (divides? a b) (= (remainder b a) 0))
(define (next n)
  (if (= n 2) 3 (+ n 2)))

;; (search-for-primes 10000000)   -> 1.0000000000000009e-2
;; (search-for-primes 100000000)  -> .02999999999999997
;; (search-for-primes 1000000000) ->  *** .11000000000000004

;; The modifications does not exactly halve the expected runtime because of the
;; NEXT procedures IF test. The additional IF test makes the test run about 1.5 times as
;; fast!
      
