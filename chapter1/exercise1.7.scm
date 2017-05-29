(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(good-enough? 0.1 0.01)
(good-enough? 5000 2345098273458)

(define (square x)
  (* x x))

(define (average x y)
  (/ (+ x y) 2))

(define (new-good-enough? guess improved-guess)
  (< (abs (- guess improved-guess)) (* guess 0.001)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (new-good-enough? guess (improve guess x))
      guess
      (sqrt-iter (improve guess x)
                 x)))
