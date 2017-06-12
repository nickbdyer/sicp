;; Linear recursion
(define (expt b n)
  (if (= n 0)
      1
      (* b (expt b (- n 1)))))

;; Linear iteration
(define (expt b n)
  (expt-iter b n 1))

(define (expt-iter b counter product)
  (if (= counter 0)
      product
      (expt-iter b
                (- counter 1)
                (* b product))))

;; Logarithmic recursive
(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (even? n)
  (= (remainder n 2) 0))

;; Logarithmic iterative
(define (fast-expt-iter b n)
  (f-e-iter 1 b n))

(define (f-e-iter a b n)
  (cond ((= n 0) a)
        ((even? n) (f-e-iter a (* b b) (/ n 2)))
        (else (f-e-iter (* a b) b (- n 1)))))

(fast-expt-iter 5 3)
(fast-expt-iter 5 5)
(fast-expt-iter 10 6)
