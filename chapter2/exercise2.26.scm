(define x (list 1 2 3))
(define y (list 4 5 6))

;; (1 2 3 4 5 6)
;; ((1 2 3) . (4 5 6)) ((1 2 3) 4 5 6)
;; ((1 2 3) (4 5 6))

(append x y)
(cons x y)
(list x y)
