(define (timed-prime-test n)
  (newline)
  (display n)
  (start-prime-test n (runtime)))

(define (start-prime-test n start-time)
  (if (prime? n)
      (report-prime (- (runtime) start-time))))

(define (report-prime elapsed-time)
  (display " *** ")
  (display elapsed-time))

(define (prime? n)
  (= n (smallest-divisor n)))

(define (smallest-divisor n)
  (find-divisor n 2))

(define (find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (find-divisor n (+ test-divisor 1)))))

(define (divides? a b)
  (= (remainder b a) 0))

(define (fast-timed-prime-test n)
  (newline)
  (display n)
  (fast-start-prime-test n (runtime)))

(define (fast-start-prime-test n start-time)
  (if (fast-prime? n)
      (report-prime (- (runtime) start-time))))

(define (fast-prime? n)
  (= n (fast-smallest-divisor n)))

(define (fast-smallest-divisor n)
  (fast-find-divisor n 2))

(define (fast-find-divisor n test-divisor)
  (cond ((> (square test-divisor) n) n)
        ((divides? test-divisor n) test-divisor)
        (else (fast-find-divisor n (next test-divisor)))))

(define (next n)
  (if (= 2 n)
    3
    (+ n 2)))

     (timed-prime-test 1000000000000037)
(fast-timed-prime-test 1000000000000037)

