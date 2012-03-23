(require (planet soegaard/sicp:2:1/sicp))

(define (square x)
  (* x x))

(define (sum-of-squares x y)
  (+ (square x) (square y)))

(define (abs x)
  (if (< x 0)
      (- x)
      x))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
      (average guess (/ x guess)))

(define (sqrt x)
    (sqrt-iter 1.0 x))