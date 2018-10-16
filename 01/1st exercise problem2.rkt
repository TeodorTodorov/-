#lang racket
(define (add k l)
                   (+ k l )
               )
(define a 5)
(if(> 6 a) 1 0)



(define(factorial arg1)
   (if (= arg1 1) 1 (* arg1 (factorial (- arg1 1))))

)
  (factorial 55534)