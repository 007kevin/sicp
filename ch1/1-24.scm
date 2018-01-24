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
(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))
(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))
(define (prime? n)
  (fast-prime? n 10))
(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))
(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))
(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

;; Exercise implementation
;; Finds the three smallest primes larger than n
(define (search-for-primes n)
  (define (start count start-time n)
    (cond ((= count 0) (report-prime (- (runtime) start-time)))
          ((prime? n) (print-start (- count 1) start-time (+ n 2)))
          (else (start count start-time (+ n 2)))))
  (define (print-start count start-time n)
    (display n)
    (newline)
    (start count start-time n))
  (start 3 (runtime) (if (odd? n) n (+ n 1))))

;; (search-for-primes 1000000000000000000000) -> 3.0000000000001137e-2
;; (search-for-primes 10000000000000000000000) -> .00999999999999801
;; (search-for-primes 100000000000000000000000) -> 1.9999999999999574e-2
