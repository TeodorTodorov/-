#lang racket
(require rackunit)
(require rackunit/text-ui)

; Искаме да проверим дали даден низ съдържа в себе си друг даден низ.
(define (digCount x)
  (define (digits x n)
    (if (= x 0)
         n
        (digits (floor (/ x 10)) (+ n 1))
        
        )

    )
  (digits x 0)
  

  )

(define (substr? x y)

(define (isSub p z)
              (cond
                 ((= z 0) #t)
                ((=(remainder p 10) (remainder z 10)) (isSub (floor (/ p 10)) (floor (/ z 10)) )  )
               
                ( (not (=(remainder p 10) (remainder z 10))) (isSub (floor (/ p 10 )) (floor y) )  )
                (( <(digCount p) (digCount z) ) #f )
              )
                )
  
  (if( <(digCount x) (digCount y))
     #f

     (isSub x y))
     )


  


(define tests (test-suite
  "Substring tests"

  (check-true (substr? 1234 23))
  (check-true (substr? 1234 12))
  (check-true (substr? 1234 1))
  (check-true (substr? 1234 2))
  (check-true (substr? 1234 4))
))

(run-tests tests 'verbose)

