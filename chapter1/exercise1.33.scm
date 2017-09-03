(define (fermat-test n)
  (define (try-it a)
    (= (expmod a n n) a))
  (try-it (+ 1 (random (- n 1)))))

(define (fast-prime? n times)
  (cond ((= times 0) true)
        ((fermat-test n) (fast-prime? n (- times 1)))
        (else false)))

(define (prime? x)
  (fast-prime? x 5))

(define (filtered-accumulate predicate combiner null-value term a next b)
  (cond ((> a b) null-value)
        ((predicate a) (combiner
                         (term a)
                         (filtered-accumulate predicate combiner null-value term (next a) next b)))
        (else
          (filtered-accumulate predicate combiner null-value term (next a) next b))))

(define (inc x)
  (+ 1 x))

(define (identity x)
  x)

(filtered-accumulate even? + 0 identity 0 inc 4)
(filtered-accumulate odd? * 1 identity 1 inc 5)
