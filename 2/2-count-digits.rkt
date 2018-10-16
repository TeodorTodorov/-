#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да преброим цифрите на дадено число
(define (count-digits x)
  (define (count-digits2 x)
  (cond
    (( =(/ x 10) 0) 0)
    (( <(/ x 10) 1) 1)
    (else (+ 1 (count-digits(floor (/ x 10))) ))
    )
    )
  
  (cond
    ((< x 0) (count-digits2 (* -1 x)))
    (else (count-digits2 (* 1 x)))
    )
  
    
  )

(define tests (test-suite
  "count-digits tests"

  (test-case "single-digit" (check-equal? (count-digits 9) 1))
  (test-case "many digits" (check-equal? (count-digits -54321) 5))
  (test-case "no-digits" (check-equal? (count-digits 0) 0))
))

(run-tests tests 'verbose)

