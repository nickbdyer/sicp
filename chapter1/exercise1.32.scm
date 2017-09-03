(define (inc x)
  (+ 1 x))

(define (identity x)
  x)

(define (accumulate combiner null-value term a next b)
  (if (> a b)
    null-value
    (combiner (term a)
              (accumulate combiner null-value term (next a) next b))))

(define (accumulate-iter combiner null-value term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (combiner result (term a)))))
  (iter a null-value))

(accumulate + 0 identity 0 inc 10)
(accumulate-iter + 0 identity 0 inc 10)

(accumulate * 1 identity 1 inc 10)
(accumulate-iter * 1 identity 1 inc 10)
