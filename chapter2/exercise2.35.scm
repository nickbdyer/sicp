(load "test.rkt")

(define (count-leaves x)
  (cond ((null? x) 0)
        ((not (pair? x)) 1)
        (else (+ (count-leaves (car x))
                 (count-leaves (cdr x))))))

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define nil '())

(define (count-leaves-accum t)
  (accumulate (lambda (value accum) (+ accum value))
              0
              (map (lambda (x)
                     (if (not (pair? x))
                                 1
                                 (count-leaves-accum x))) t)))

(assert-equals "maps a list"
               (count-leaves (list (list 1 2) (list 3 4) 5))
               (count-leaves-accum (list (list 1 2) (list 3 4) 5)))

