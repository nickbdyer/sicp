(define (f g)
  (g 2))

(f square)
(f (lambda (x) (* x (+ x 1))))

(f f)
(f 2)

;; Object 2 is not applicable. 2 is not a function
