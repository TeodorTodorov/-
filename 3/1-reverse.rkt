#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да обърнем цифрите на дадено число.

(define (my-reverse x)

(define (digCount x)
  (define (digits x n)
    (if (= x 0)
         n
        (digits (floor (/ x 10)) (+ n 1))
        
        )

    )
  (digits x 0)
  

  )

  
  (define (reverse num iterationNumber )
    (if(> iterationNumber 0)
       (+(*(expt 10 iterationNumber) (remainder num 10) ) (reverse (floor(/ num 10)) (- iterationNumber 1)  ) )
       (*(expt 10 iterationNumber) (remainder num 10) )

       )
    )
  

  (reverse x (- (digCount x) 1) )
  )

(define tests (test-suite
  "Reverse tests"

  (test-case "" (check-equal? (my-reverse 0) 0))
  (test-case "" (check-equal? (my-reverse 5) 5))
  (test-case "" (check-equal? (my-reverse 10) 1))
  (test-case "" (check-equal? (my-reverse 21) 12))
  (test-case "" (check-equal? (my-reverse 10234) 43201))
  (test-case "" (check-equal? (my-reverse 10234003) 30043201))
))

(run-tests tests 'verbose)

