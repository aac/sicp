(require racket/include)
(include "1_contrib.rkt")

(define (* a b)
  (*-iter a b 0))

(define (*-iter a b c)
  (cond ((= b 0) c)
        ((even? b) (*-iter (double a) (halve b) c))
        (else (*-iter a (- b 1) (+ a c)))))