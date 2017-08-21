;; fast-prime?

(define (expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (square (expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (expmod base (- exp 1) m))
                    m))))

(define (slow-expmod base exp m)
  (cond ((= exp 0) 1)
        ((even? exp)
         (remainder (* (slow-expmod base (/ exp 2) m)
                       (slow-expmod base (/ exp 2) m))
                    m))
        (else
         (remainder (* base (slow-expmod base (- exp 1) m))
                    m))))

;; By executing slow-expmod twice on the even numbers you are undoing the benefit of the
;; fast prime function thereby returning it to linear rather than logarithmic execution.
