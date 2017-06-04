(define (fr x)
  (if (< x 3)
    x
    (+ (fr (- x 1)) (* 2 (fr (- x 2))) (* 3 (fr (- x 3))))))

(fr 0) ;;0
(fr 1) ;;1
(fr 2) ;;2
(fr 3) ;;4
(fr 4) ;;11
(fr 5) ;;25
(fr 10)

;; a <- a + 2b + 3c
;; b <- a
;; c <- b

(define (fi x)
  (f-iter 2 1 0 x))

(define (f-iter a b c count)
  (if (= count 0)
    c
    (f-iter (+ a (* b 2) (* c 3)) a b (- count 1))))


(fi 0) ;;0
(fi 1) ;;1
(fi 2) ;;2
(fi 3) ;;4
(fi 4) ;;11
(fi 5) ;;25
(fi 10)
