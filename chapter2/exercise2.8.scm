(define (sub-interval interval-1 interval-2)
  (make-interval
    (- (lower-bound interval-1) (upper-bound interval-2))
    (- (upper-bound interval-1) (lower-bound interval-2)))
