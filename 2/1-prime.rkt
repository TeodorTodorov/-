#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да проверим дали дадено число е просто

(define (prime? x)
  (define limit2 (sqrt x)  )
  (define (isPrime limit number current)
    (cond
      ((<= number 2) #t )
      ((= (remainder number current) 0) #f )
      ((> current limit) #t )
     ( else (isPrime limit number (+ current 1)) )
      )
    
    )

  (isPrime limit2 x 2 )
    )

(define tests (test-suite
  "prime tests"

  (test-case "" (check-true (prime? 2)))
  (test-case "" (check-true (prime? 3)))
  (test-case "" (check-false (prime? 4)))
  (test-case "" (check-false (prime? 10)))
  (test-case "" (check-true (prime? 11)))
   (test-case "" (check-true (prime? 521)))
))

(run-tests tests 'verbose)

