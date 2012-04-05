(require racket/include)
(include "1_contrib.rkt")

(define (fast-expt b n)
  (fast-expt-iter b n 1))

; the n/2-1 breaks the invariant
(define (fast-expt-iter b n a)
  (cond ((= n 0) a)
        ((even? n) (fast-expt-iter b (- (/ n 2) 1) (* a (square b))))
        (else (fast-expt-iter b (- n 1) (* a b)))))

; this doesn't. and it properly utilizes the hint
(define (fast-expt-iter b n a)
  (cond ((= n 0) a)
        ((even? n) (fast-expt-iter (square b) (/ n 2) a))
        (else (fast-expt-iter b (- n 1) (* a b)))))