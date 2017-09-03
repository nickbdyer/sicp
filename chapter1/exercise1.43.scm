(define (compose f g)
  (lambda (input)
    (f (g input))))

(define (repeated f count)
  (if (= count 0)
    (lambda (x) x)
    (compose f (repeated f (- count 1)))))

((repeated square 2) 5)
