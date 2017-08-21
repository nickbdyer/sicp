(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp) (remainder (square (expmod base (/ exp 2) m)) m))
        (else (remainder (* base (expmod base (- exp 1) m)) m))))

(define (slow-expmod base exp m)
  (remainder (fast-expt base exp) m))

(expmod 5 1000000000000037 1000000000000037)


(expmod 2 3 3)
(remainder (* 2 (expmod 2 (- 3 1) 3)) 3)
(remainder (* 2 (remainder (square (expmod 2 (/ 2 2) 3)) 3)) 3)
(remainder (* 2 (remainder (square (remainder (* 2 (expmod 2 (- 1 1) 3)) 3)) 3)) 3)
(remainder (* 2 (remainder (square (remainder (* 2 (1)) 3)) 3)) 3)
(remainder (* 2 (remainder (square (2)) 3)) 3)
(remainder (* 2 (remainder (4) 3)) 3)
(remainder (* 2 (1)) 3)
(remainder (2) 3)
2

(expmod 2 3 3)
(remainder (fast-expt 2 3) 3)
(remainder (* 2 (fast-expt 2 (- 3 1))) 3)
(remainder (* 2 (square (fast-expt 2 (/ 2 2)))) 3)
(remainder (* 2 (square (* 2 (fast-expt 2 (- 1 1))))) 3)
(remainder (* 2 (square (* 2 (1)))) 3)
(remainder (* 2 (square (2))) 3)
(remainder (* 2 (4)) 3)
(remainder (8) 3)
2
