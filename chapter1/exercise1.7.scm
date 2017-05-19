(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(good-enough? 0.1 0.01)
(good-enough? 5000 2345098273458)
