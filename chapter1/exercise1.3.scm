(define (square x) (* x x))

(define (sum-squares x y) (+ (square x) (square y)))

(define (sum-large-squares x y z)
  (cond
    ((and (< x y) (< x z)) (sum-squares y z))
    ((and (< y x) (< y z)) (sum-squares x z))
    (else (sum-squares x y))))

(sum-large-squares 1 2 2)
(sum-large-squares 2 2 2)
(sum-large-squares 1 2 3)
(sum-large-squares 3 2 1)
(sum-large-squares 3 2 2)
