(define (inc x)
	(+ 1 x))

(define (identity x)
  x)

(define (product term a next b)
	(if (> a b)
		1
		(* (term a)
			 (product term (next a) next b))))

(product identity 1 inc 10)

(define (product-iter term a next b)
  (define (iter a result)
    (if (> a b)
      result
      (iter (next a) (* result (term a)))))
  (iter a 1))

(product-iter identity 1 inc 10)

(define (factorial x)
  (product-iter identity 1 inc x))

(factorial 6)
