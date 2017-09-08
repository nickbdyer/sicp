(define (square x)
  (* x x))

(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (log base x)
  (define (iter x count)
    (if (= x base)
      count
      (iter (/ x base) (+ count 1))))
  (iter x 1))

(define (cons a b)
  (* (fast-expt 2 a) (fast-expt 3 b)))

(define (reduce pred num divisor)
  (if (pred num)
    (reduce pred (/ num divisor) divisor)
    num
    ))

(define (divis-3 x)
  (= 0 (remainder x 3)))

(define (divis-2 x)
  (= 0 (remainder x 2)))

(define (car z)
  (log 2 (reduce divis-3 z 3)))

(define (cdr z)
  (log 3 (reduce divis-2 z 2)))


(car (cons 5 6))
(cdr (cons 5 6))
