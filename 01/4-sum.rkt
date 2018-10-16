#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да намерим сумата на числа в интервал
(define (AtoBsum a b)
  
   (define(AtoBsum2 n j k)
   (if(> n j) k ( AtoBsum2 (+ n 1) j (+ k n)))
     )
  
  (AtoBsum2 a b 0)
  )
  



(define tests (test-suite
  "sum tests"

  (test-case "start < end" (check-equal? (AtoBsum 1 100) 5050))
  (test-case "start > end" (check-equal? (AtoBsum 500 150) 0))
  (test-case "start == end" (check-equal? (AtoBsum 9 9) 9))
  (test-case "negative numbers" (check-equal? (AtoBsum -10 0) -55))
))

(run-tests tests 'verbose)

