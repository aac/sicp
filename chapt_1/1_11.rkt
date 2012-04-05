; start with the recursive implementation
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

; now the iterative
; I don't love how the conditionals are set up, though, the (- n 3) and (< count 0) feel awkward.
(define (f n)
  (cond ((< n 3) n)
        (else (f-iter (- n 3) 2 1 0))))

(define (f-iter count a b c)
  (cond ((< count 0) a)
        (else (f-iter (- count 1)
                      (+ a (* 2 b) (* 3 c))
                      a
                      b))))