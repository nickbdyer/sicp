(define (make-segment start end)
  (cons start end))

(define (start-segment segment)
  (car segment))

(define (end-segment segment)
  (cdr segment))

(define (mid-point segment)
  (make-point
    (average (x-point (start-segment segment)) (x-point (end-segment segment)))
    (average (y-point (start-segment segment)) (y-point (end-segment segment)))))

(define (average a b)
  (/ (+ a b) 2))

(define (make-point x y)
  (cons x y))

(define (x-point point)
  (car point))

(define (y-point point)
  (cdr point))

(define (print-point p)
  (newline)
  (display "(")
  (display (x-point p))
  (display ",")
  (display (y-point p))
  (display ")"))

;; (define origin (make-point -10 8))
;; (define terminus (make-point -3 123))
;; (define my-line (make-segment origin terminus))
;; (print-point (exact->inexact (mid-point my-line)))
