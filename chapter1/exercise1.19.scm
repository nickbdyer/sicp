(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (fib-iter a
                   b
                   (+ p (* q 2))
                   (+ (* q 2) (* p 3))
                   (/ count 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))

(define (fib-slow n)
  (fib-iter-slow 1 0 n))

(define (fib-iter-slow a b count)
  (if (= count 0)
    b
    (fib-iter-slow (+ a b) a (- count 1))))

(fib 30)
(fib-slow 30)

