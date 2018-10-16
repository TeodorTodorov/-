#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме функция, която по дадени две числа - x, k, ни дава x^k, но в по-малко стъпки
; от последната задача.
(define(my-even? a)
  (if(= (remainder a 2) 0) #t #f)

  )
(define(square x)
(* x x)
  )

(define (fastpow p q)
(define(ftPow x n m)
(if(= n 0) 1 ( if(my-even? n) (square (ftPow x (floor (/ n 2)) m)) (* (square(ftPow x (floor (/ n 2)) m)) x))
              )
)

  (if (>= q 0 )
  (ftPow p q 1)
  (/ 1.0 (ftPow p (* -1 q) 1))
)
  )

(define tests (test-suite
  "fastpow tests"

  (test-case "zero power" (check-equal? (fastpow 192 0) 1))
  (test-case "positive power" (check-equal? (fastpow 2 10) 1024))
  (test-case "negative base" (check-equal? (fastpow -2 11) -2048))
  ; Ако се чувствате смели
   (test-case "negative power" (check-equal? (fastpow 2 -2) 0.25))
))

(run-tests tests 'verbose)

