(define (double a)
  (+ a a))

(define (halve a)
  (/ a 2))

(define (even? n)
  (= (remainder n 2) 0))


(define (fast-multiply a b)
  (cond ((= b 0) 0)
        ((even? a) (double (fast-multiply a (halve b))))
        (else (+ a (fast-multiply a (- b 1))))))


(define (fast-multiply-iter a b)
  (f-m-iter 0 a b))

(define (f-m-iter n a b)
  (cond ((= b 0) n)
        ((even? b) (f-m-iter n (double a) (halve b)))
        (else (f-m-iter (+ n a) a (- b 1)))))

(fast-multiply 25000 25000)
(fast-multiply-iter 25000 25000)
