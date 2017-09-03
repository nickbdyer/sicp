(define (inc x)
  (+ x 1))

(define (compose f g)
  (lambda (input)
    (f (g input))))

((compose square inc) 6)
