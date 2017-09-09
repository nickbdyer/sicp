(define (my-reverse lsit)
  (if (null? (cdr lsit))
    lsit
    (append (my-reverse (cdr lsit)) (list (car lsit)) )))

(define (deep-reverse x)
  (map my-reverse (my-reverse x)))

(deep-reverse (list (list 1 2) (list 3 4)))

