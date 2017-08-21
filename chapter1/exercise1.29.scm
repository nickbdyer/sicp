(define (cube x)
	(* x x x))

(define (inc x)
	(+ 1 x))

(define (sum term a next b)
	(if (> a b)
		0
		(+ (term a)
			 (sum term (next a) next b))))

(define (simpson f a b n)

	(define h (/ (- b a) n))

	(define (yk k)
		(f (+ a (* k h))))

	(define (multiple k)
		(cond ((or (= k 0) (= k n)) 1)
					((odd? k) 4)
					((even? k) 2)))

	(define (next k)
		(* (multiple k) (yk k)))

	(* (sum next 0 inc n)
		 ( / h 3)))


(define (integral f a b dx)
	(define (add-dx x)
		(+ x dx))
	(* (sum f (+ a (/ dx 2.0)) add-dx b)
		 dx))

(integral cube 0 1 0.01)
(integral cube 0 1 0.001)

(simpson cube 0 1 100)
(simpson cube 0 1 1000)
