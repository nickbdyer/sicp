(load "exercise2.2.scm")

(define (area rectangle)
  (* (width rectangle)
     (height rectangle)))

(define (perimeter rectangle)
  (+ (* (width rectangle) 2)
     (* (height rectangle) 2)))

(define (make-rect a b c d)
  (let ((top (make-segment a b))
        (right (make-segment b c))
        (bottom (make-segment c d))
        (left (make-segment d a))))
  (list top right bottom left))

(define (width rectangle)
  (length (car rectangle)))

(define (height rectangle)
  (length (car (cdr rectangle))))

(define (length segment)
  (sqrt (+ (sq (- (x-point (start-segment segment)) (x-point (end-segment segment))))
        (sq (- (y-point (start-segment segment)) (y-point (end-segment segment)))))))

(define (sq x)
  (* x x))
