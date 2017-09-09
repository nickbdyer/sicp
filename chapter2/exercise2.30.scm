(load "test.rkt")

(define (square x)
  (* x x))

(define (square-tree tree)
  (cond ((null? tree) '())
        ((not (pair? tree)) (square tree))
        (else (cons (square-tree (car tree))
                    (square-tree (cdr tree))))))

(define (square-tree-map tree)
  (map (lambda (sub-tree)
         (if (pair? sub-tree)
             (square-tree-map sub-tree)
             (square sub-tree)))
       tree))

(assert-equals "squares a tree"
  (list 1
     (list 4 (list 9 16) 25)
       (list 36 49))
  (square-tree (list 1
                  (list 2 (list 3 4) 5)
                    (list 6 7))))

(assert-equals "squares a tree with map"
  (list 1
     (list 4 (list 9 16) 25)
       (list 36 49))
  (square-tree-map (list 1
                  (list 2 (list 3 4) 5)
                    (list 6 7))))
