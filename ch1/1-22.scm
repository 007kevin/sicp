(load "1-21.scm")
(define (prime? n)
  (= n (smallest-divisor n)))
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

;; (search-for-primes 10000000)   -> 1.9999999999999997e-2
;; (search-for-primes 100000000)  -> .04000000000000001
;; (search-for-primes 1000000000) -> .13999999999999999
;; By running search-for-primes for given n, we should expect n*10 to take
;; sqrt(10) = 3.162278 times as long.
;; .13999999999999999 / .04000000000000001 = 3.5 ~ 3.162278
;; thus the timing seems to bear out the expectation.
;; The results seem compatible with the notion that programs run proportional
;; to the number of steps required for the computation.
        
    
