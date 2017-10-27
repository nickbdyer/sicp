(load "test.rkt")

(define (accumulate op initial sequence)
  (if (null? sequence)
      initial
      (op (car sequence)
          (accumulate op initial (cdr sequence)))))

(define nil '())

(define (map p sequence)
  (accumulate (lambda (x y) (cons (p x) y)) nil sequence))

(define (append seq1 seq2)
  (accumulate cons seq2 seq1))

(define (length sequence)
  (accumulate (lambda (x y) (+ y 1)) 0 sequence))

(assert-equals "maps a list"
               (list 2 3 4 5)
               (map (lambda (x) (+ x 1)) (list 1 2 3 4)))

(assert-equals "appends a list"
               (list 1 2 3 4 5 6 7 8)
               (append (list 1 2 3 4) (list 5 6 7 8)))

(assert-equals "checks length of a list"
               8
               (length (list 1 2 3 4 5 6 7 8)))
