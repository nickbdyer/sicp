(define (center i)
  (/ (+ (lower-bound i) (upper-bound i)) 2))

(define (width i)
  (/ (- (upper-bound i) (lower-bound i)) 2))

(define (make-center-percent c percent)
  (make-interval (* c (- 1 percent)) (* c (+ 1 percent))))

(make-center-percent 10 0.1)

(define (percent interval)
  (/ (width interval) (center interval)))


