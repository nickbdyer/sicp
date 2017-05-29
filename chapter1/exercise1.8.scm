(define (square x)
  (* x x))

(define (cube x)
  (* x x x))

(define (third x)
  (/ x 3))

(define (improve guess x)
  (third (+ (/ x (square guess)) (* guess 2))))

(define (good-enough? guess improved-guess)
  (< (abs (- guess improved-guess)) (* guess 0.001)))

(define (crt-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (crt-iter (improve guess x)
                 x)))

(define (crt x)
  (crt-iter 1.0 x))

(crt 27)
(crt 125)
(crt 8000)
