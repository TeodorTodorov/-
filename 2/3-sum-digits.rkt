#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да намерим сумата на цифрите на дадено числo
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

(define(sum-digits x)
  (define(sum-digits2 x)
  (cond
    ((< x 1) 0 )
      ((> x 0.9) (+(remainder x 10) (sum-digits (floor (/ x 10)))) )

       )
    )
    (cond
      
    ((< x 0) (sum-digits2 (* -1 x)))
    (else (sum-digits2 (* 1 x)))
    )

)

(define tests (test-suite
  "sum-digits tests"

  (test-case "no-digit" (check-equal? (sum-digits 0) 0))
  (test-case "single digit" (check-equal? (sum-digits 4) 4))
  (test-case "many digits" (check-equal? (sum-digits -492148) 28))
  (test-case "100" (check-equal? (sum-digits 100) 1))
))

(run-tests tests 'verbose)

