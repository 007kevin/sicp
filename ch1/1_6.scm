;; When Alyssa attempts to compute the square roots with the
;; 'new-if', interpretor will error with 'Aborting!: maximum recursion
;; depth exceeded'.

(define (new-if pred then-c else-c)
  (cond (pred then-c)
        (else else-c)))

;; This is because new-if uses applicative-order evaluation instead
;; of normal-order evaluation thus the else-clause of the new-if
;; argument gets called infinitely.

;; The 'if' statement is a special form in that after the predicate,
;; only one of the two consequent expressions get evaluated.
