(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

(define add1
  (lambda (x)
    (+ x 1)))

(define sub1
  (lambda (x)
    (- x 1)))

;; The Law of car
;; The primitive car is defined only for non-empty lists

(define run-law-of-car-tests
  (lambda ()
    (assert (equal? (car '(a b c)) 'a))
    (assert (equal? (car '((a b c) x y z)) '(a b c)))
    (assert (equal? (car '(((hotdogs)) (and) (pickle) relish)) '((hotdogs))))
    (assert (equal? (car (car '(((hotdogs)) (and)))) '(hotdogs)))))

;; The Law Of cdr
;; The primitive cdr is defined only for non-empty lists.
;; The cdr of any non-empty list is always another list.

(define run-law-of-cdr-tests
  (lambda ()
    (assert (equal? (cdr '(a b c)) '(b c)))
    (assert (equal? (cdr '((a b c) x y z)) '(x y z)))
    (assert (equal? (cdr '(hamburger)) '()))))
