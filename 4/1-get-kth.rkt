#lang racket
(require rackunit)
(require rackunit/text-ui)

(define m '(1 2 3 (4 5) (6 (7 8))))

; Искаме с подходящи извиквания на car и cdr да вземем всяко число.
(car m )
(car (cdr m))
(car (cdr (cdr m)))
(car(car(cdr (cdr (cdr m)))))
;(cdr(car(cdr (cdr (cdr m)))))
(car(cdr(car(cdr (cdr (cdr m))))))
(car(car(cdr(cdr(cdr(cdr m))))))
(car(car(cdr(car(cdr(cdr(cdr(cdr m))))))))
(car(cdr(car(cdr(car(cdr(cdr(cdr(cdr m)))))))))



