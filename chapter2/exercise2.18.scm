(define (reverst lsit)
  (if (null? (cdr lsit))
    lsit
    (append (reverst (cdr lsit)) (list (car lsit)) )))

(reverst (list 1 2 3 4))


