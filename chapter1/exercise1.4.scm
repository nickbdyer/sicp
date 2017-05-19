(define (a-plus-abs-b a b)
  ((if (> b 0)
     +
     -) a b))

When b is positive add a and b.
When b is negative subtract b from a.
