(define (compose f g)
  (lambda (input)
    (f (g input))))

(define (repeated f count)
  (if (= count 0)
    (lambda (x) x)
    (compose f (repeated f (- count 1)))))

(define (average a b c)
  (/ (+ a b c) 3))

(define (smooth f)
  (let ((dx 0.0000001))
  (lambda (x)
  (average
    (f (- x dx))
    (f x)
    (f (+ x dx))))))

((smooth square) 4)

(define repeat-smooth
  (repeated smooth 10))

((repeat-smooth square) 4)
