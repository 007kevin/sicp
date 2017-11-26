;; Second attempt of exercise 1.16 using the hint provided (p.46)
;;
;; Using the observation (b^(n/2))^2 = (b^2)^(n/2), keep, along with the
;; exponent n and the base b, an additional state variable a, and define
;; the state transformation in such a way that the product ab^n is unchanged
;; from state to state. At the beginning of the process a is taken to be 1,
;; and the answer is given by the value of a at the end of the process.
;; In general, the technique of defining an *invariant quantity* that remains
;; unchanged from state to state is a powerful way to think about the
;; design of iterative algorithms.

;; Recursive solution
(define (er b n)
  (cond ((= n 0) 1)
        ((even? n) (square (er b (/ n 2))))
        (else (* b (er b (- n 1))))))

;; Iterative solution with invariant quantity


