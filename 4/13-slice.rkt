#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме функция, която приема списък и две числа и връща
; списък, състоящ се от елементите на списъка, които се намират на индекси от първото число до второто.
(define (drop lis n)
  (cond
    ((= n 0 ) lis)
    (else (drop (cdr lis) (- n 1)))

    )


  )
(define (take n lis)

  (define (take-iter count lis1)
    (cond

      ((= n count) '() )
      (else  (cons (car lis1) (take-iter ( + count 1) (cdr lis1))))

      )



    )
  (take-iter 0 lis  )


  )

(define (slice lis from to)
  
  (take (+(- to from )1) (drop lis from ))
  )

(define tests
 (test-suite "Slice tests"
     (check-equal? (slice '(1 9 8 2) 1 2) '(9 8))
     (check-equal? (slice '(9 7 2 3) 0 2) '(9 7 2)) 
  )
)

(run-tests tests 'verbose)
