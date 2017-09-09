(define (for-etch func items)
  (if (null? items)
    '()
    (func (car items))
    (for-etch func (cdr items))))

(for-each (lambda (x)
            (newline)
            (display x))
          (list 57 321 99))


