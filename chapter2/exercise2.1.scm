(define (gcd a b)
  (if (= b 0)
      a
      (gcd b (remainder a b))))

(define (make-rat n d)
  (let ((g (gcd n d)))
    (cons (/ n g) (/ d g))))

(define (new-make-rat n d)
  (let ((g (abs (gcd n d)))
        (sign (get-sign n d)))
  (cons (* sign (/ (abs n) g)) (/ (abs d) g))))

(define (get-sign n d)
  (if (< (* n d) 0)
    -1
    1))

(new-make-rat 3 4)
;;3/4
(new-make-rat -3 5)
;; -3/5
(new-make-rat -2 -5)
;; 2/5
(new-make-rat 2 -5)
;; -2/5

