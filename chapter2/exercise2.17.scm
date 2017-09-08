(define (last-pair list1)
  (if (null? (cdr list1))
    (car list1)
    (last-pair (cdr list1))))

(last-pair (list 1 3 5 209 2398 23))
