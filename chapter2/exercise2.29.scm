(define (make-mobile left right)
  (list left right))

(define (make-branch length structure)
  (list length structure))

(define (left-branch mobile)
  (car mobile))

(define (right-branch mobile)
  (cdr mobile))

(define (branch-length branch)
  (car branch))

(define (branch-structure branch)
  (cdr branch))

(define (total-weight mobile)
  (+ (branch-weight (left-branch mobile))
     (branch-weight (right-branch mobile))))

(define (branch-weight branch)
  (cond ((number? branch-structure branch) (branch-structure branch))
        (else (total-weight (branch-structure branch)))))

(define (balanced-branch branch)
  (if ((number? branch-structure branch)
       #t
       (balanced branch-structure))))

(define (balanced mobile)
  (and (= (torque (left-branch mobile))
          (torque (right-branch mobile)))
       (balanced-branch (left-branch mobile))
       (balanced-branch (right-branch mobile))))

(define (torque branch)
  (* (branch-length branch) (branch-weight branch)))
