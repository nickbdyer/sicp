(define (* a b)
  (if (= b 0)
      0
      (+ a (* a (- b 1)))))

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

(* 25 25)
(fast-multiply 25 25)
