(define (same-parity first . rest)
  (if (even? first)
    (create-new-list even? rest (list first))
    (create-new-list odd? rest (list first))))

(define (create-new-list pred old-list new-list)
  (cond ((null? old-list) new-list)
        ((pred (car old-list)) (create-new-list pred (cdr old-list) (append new-list (list (car old-list)))))
        (else (create-new-list pred (cdr old-list) new-list))))

(same-parity 1 2 3 4 5 6 7)
(same-parity 2 3 4 5 6 7)
