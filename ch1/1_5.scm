;; What behavior is observed with an interpreter that uses applicative-order
;; evaluation vs normal-order evaluation?
(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

;; Evaluation the expression:
(test 0 (p))

;; Answer
;; For applicative-order evaluation, arguments are evaulated first before
;; applied. Since (p) defines itself, the program will never terminate:

(test 0 (p))
(test 0 (p))
(test 0 (p))
(test 0 (p))
;; ... etc

;; For normal-order evaluation, fully expand first then reduce thus terminate:
(test 0 (p))
(if (= 0 0) 0 (p))
(if #t 0 (p))
0
