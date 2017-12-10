;; Clever algorithm for computing Fibonacci numbers in a logarithmic
;; number of steps
;;
;; T0,1(a b) = (b + a, a)
;;
;; Tp,q(a b) = (bq + aq + ap, bp + aq)
;;
;; By applying the transformation twice...
;;
;; Tp,q(Tp,q(a b)) = (b(2pq+q^2) + a(2pq+q^2) + a(p^2+q^2),b(p^2+q^2) + a(2pq+q^2))
;;
;; is equivalent to the single transformation
;;
;; T p^2+q^2, 2pq+q^2 (a b)

(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count) (fib-iter a
                                 b
                                 (+ (square p) (square q))
                                 (+ (* 2 (* p q )) (square q))
                                 (/ count 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))
