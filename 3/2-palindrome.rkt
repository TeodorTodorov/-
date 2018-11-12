#lang racket
(require rackunit)
(require rackunit/text-ui)


; Искаме да проверим дали дадено число е палиндром.
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

(define (palindrome? x)
  (cond
    ( (= x (my-reverse x)) #t)
    (else #f)
    )

)
(define (palindrome2? x)
  (palindrome? x)
  )



(define tests (test-suite
  "Palindrome tests"

  (check-true (palindrome? 1))
  (check-false (palindrome? 10))
  (check-true (palindrome? 101))
  (check-true (palindrome? 121))
  (check-false (palindrome? 122))
  (check-false (palindrome? 221))
  (check-false (palindrome? 1220))
  (check-true (palindrome? 1221))
  (check-false (palindrome? 12210))
  (check-true (palindrome? 1234321))
  (check-true (palindrome? 12344321))
  (check-false (palindrome? 123421))
  (check-false (palindrome? 124321))
  (check-true (palindrome? 1))
  (check-false (palindrome2? 10))
  (check-true (palindrome2? 101))
  (check-true (palindrome2? 121))
  (check-false (palindrome2? 122))
  (check-false (palindrome2? 221))
  (check-false (palindrome2? 1220))
  (check-true (palindrome2? 1221))
  (check-false (palindrome2? 12210))
  (check-true (palindrome2? 1234321))
  (check-true (palindrome2? 12344321))
  (check-false (palindrome2? 123421))
  (check-false (palindrome2? 124321))
))

(run-tests tests 'verbose)
