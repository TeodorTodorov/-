#lang racket
(require rackunit)
(require rackunit/text-ui)
(define L '(a(b c) (d)))
(define L1 '(c (d a d f)))
(define L2 '(a(d)(b a f)))
(define L3 '(a(b (d f c))))
(define L4 '(a(c b ((f)) d)))


 (let ((a (car L))

       (b (car(car(cdr L))))
       (c (car(cdr(car(cdr L)))))
       (d (caar(cdr(cdr L))))

       )
   
   (list a (cons b '()) (list c (cons d '())) )


   )
;(cdr(cddadr L1))
;(caddr(caddr L2))
;(cadadr(cadr L3))
(caaar(cddadr L4))