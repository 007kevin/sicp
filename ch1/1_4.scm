(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

;; The model of evaluation allows for combinations whose
;; operators are compound expressions.

