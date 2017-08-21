;;Carmichael 561, 1105, 1729, 2465, 2821, and 6601

(define (square x) (* x x))

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (fermat-test prime count)
  (define (try-it a)
    (= (expmod a prime prime) a))
  (cond ((= count 0) true)
        ((try-it (- count 1)) (fermat-test prime (- count 1)))
        (else false)))

(define (fermat n)
  (fermat-test n n))

(fermat 9)
(fermat 7)
(fermat 11)
(fermat 17)
(fermat 16)

(fermat 561)
(fermat 1105)
(fermat 1729)
(fermat 2465)
(fermat 2821)
(fermat 6601)
