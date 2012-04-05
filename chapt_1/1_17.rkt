(require racket/include)
(include "1_contrib.rkt")

; double and halve defined in contrib. vital that double is n+n and not 2*n ;)
(define (* a b)
  (cond ((= b 0) 0)
        ((even? b) (* (double a) (halve b)))
        (else (+ a (* a (- b 1))))))