(test 0 (p))
((if true + -) 0 (p))


Applicative order: infinite loop

Normal order:
x = 0
(if (= 0 0)
  0
  (p)))

0

(define (p) (p))

x = 1
(if (= 1 0)
  0
  (
